
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_aborted_errors; int tx_errors; } ;
struct net_device {int trans_start; TYPE_1__ stats; } ;
struct fst_port_info {scalar_t__ start; int index; struct fst_card_info* card; } ;
struct fst_card_info {int card_no; } ;


 int ABORTTX ;
 int DBG_ASS ;
 int dbg (int ,char*,int ,int ) ;
 struct fst_port_info* dev_to_port (struct net_device*) ;
 int fst_issue_cmd (struct fst_port_info*,int ) ;
 int jiffies ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void
fst_tx_timeout(struct net_device *dev)
{
 struct fst_port_info *port;
 struct fst_card_info *card;

 port = dev_to_port(dev);
 card = port->card;
 dev->stats.tx_errors++;
 dev->stats.tx_aborted_errors++;
 dbg(DBG_ASS, "Tx timeout card %d port %d\n",
     card->card_no, port->index);
 fst_issue_cmd(port, ABORTTX);

 dev->trans_start = jiffies;
 netif_wake_queue(dev);
 port->start = 0;
}
