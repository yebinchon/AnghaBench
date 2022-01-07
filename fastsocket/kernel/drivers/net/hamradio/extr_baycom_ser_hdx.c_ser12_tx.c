
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int base_addr; } ;
struct TYPE_3__ {int tx_bit; } ;
struct TYPE_4__ {int shreg; TYPE_1__ ser12; } ;
struct baycom_state {TYPE_2__ modem; int hdrv; } ;


 int MCR (int ) ;
 int hdlcdrv_getbits (int *) ;
 int outb (int,int ) ;
 int ser12_set_divisor (struct net_device*,int) ;

__attribute__((used)) static inline void ser12_tx(struct net_device *dev, struct baycom_state *bc)
{

 ser12_set_divisor(dev, 12);




 outb(0x0e | (!!bc->modem.ser12.tx_bit), MCR(dev->base_addr));
 if (bc->modem.shreg <= 1)
  bc->modem.shreg = 0x10000 | hdlcdrv_getbits(&bc->hdrv);
 bc->modem.ser12.tx_bit = !(bc->modem.ser12.tx_bit ^
       (bc->modem.shreg & 1));
 bc->modem.shreg >>= 1;
}
