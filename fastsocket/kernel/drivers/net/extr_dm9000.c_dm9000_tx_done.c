
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {scalar_t__ tx_pkt_cnt; int queue_pkt_len; int queue_ip_summed; int dev; } ;
typedef TYPE_2__ board_info_t ;


 int DM9000_NSR ;
 int NSR_TX1END ;
 int NSR_TX2END ;
 int dev_dbg (int ,char*,int) ;
 int dm9000_send_packet (struct net_device*,int ,int ) ;
 int ior (TYPE_2__*,int ) ;
 scalar_t__ netif_msg_tx_done (TYPE_2__*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void dm9000_tx_done(struct net_device *dev, board_info_t *db)
{
 int tx_status = ior(db, DM9000_NSR);

 if (tx_status & (NSR_TX2END | NSR_TX1END)) {

  db->tx_pkt_cnt--;
  dev->stats.tx_packets++;

  if (netif_msg_tx_done(db))
   dev_dbg(db->dev, "tx done, NSR %02x\n", tx_status);


  if (db->tx_pkt_cnt > 0)
   dm9000_send_packet(dev, db->queue_ip_summed,
        db->queue_pkt_len);
  netif_wake_queue(dev);
 }
}
