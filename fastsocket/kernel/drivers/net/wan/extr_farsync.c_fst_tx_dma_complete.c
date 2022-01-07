
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct net_device {int trans_start; TYPE_1__ stats; } ;
struct fst_port_info {size_t index; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_4__ {int bits; } ;


 int DBG_TX ;
 int DMA_OWN ;
 int FST_WRB (struct fst_card_info*,int ,int) ;
 int TX_ENP ;
 int TX_STP ;
 int dbg (int ,char*) ;
 int jiffies ;
 struct net_device* port_to_dev (struct fst_port_info*) ;
 TYPE_2__** txDescrRing ;

__attribute__((used)) static void
fst_tx_dma_complete(struct fst_card_info *card, struct fst_port_info *port,
      int len, int txpos)
{
 struct net_device *dev = port_to_dev(port);




 dbg(DBG_TX, "fst_tx_dma_complete\n");
 FST_WRB(card, txDescrRing[port->index][txpos].bits,
  DMA_OWN | TX_STP | TX_ENP);
 dev->stats.tx_packets++;
 dev->stats.tx_bytes += len;
 dev->trans_start = jiffies;
}
