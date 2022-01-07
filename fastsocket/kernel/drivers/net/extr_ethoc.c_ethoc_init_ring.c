
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethoc_bd {int stat; int addr; } ;
struct ethoc {int num_tx; int num_rx; int membase; scalar_t__ cur_rx; scalar_t__ dty_tx; scalar_t__ cur_tx; } ;


 scalar_t__ ETHOC_BUFSIZ ;
 int RX_BD_EMPTY ;
 int RX_BD_IRQ ;
 int RX_BD_WRAP ;
 int TX_BD_CRC ;
 int TX_BD_IRQ ;
 int TX_BD_WRAP ;
 int ethoc_write_bd (struct ethoc*,int,struct ethoc_bd*) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int ethoc_init_ring(struct ethoc *dev)
{
 struct ethoc_bd bd;
 int i;

 dev->cur_tx = 0;
 dev->dty_tx = 0;
 dev->cur_rx = 0;


 bd.addr = virt_to_phys(dev->membase);
 bd.stat = TX_BD_IRQ | TX_BD_CRC;

 for (i = 0; i < dev->num_tx; i++) {
  if (i == dev->num_tx - 1)
   bd.stat |= TX_BD_WRAP;

  ethoc_write_bd(dev, i, &bd);
  bd.addr += ETHOC_BUFSIZ;
 }

 bd.stat = RX_BD_EMPTY | RX_BD_IRQ;

 for (i = 0; i < dev->num_rx; i++) {
  if (i == dev->num_rx - 1)
   bd.stat |= RX_BD_WRAP;

  ethoc_write_bd(dev, dev->num_tx + i, &bd);
  bd.addr += ETHOC_BUFSIZ;
 }

 return 0;
}
