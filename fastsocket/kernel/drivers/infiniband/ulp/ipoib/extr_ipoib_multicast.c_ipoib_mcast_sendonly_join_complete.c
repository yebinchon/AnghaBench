
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int flags; int pkt_queue; TYPE_2__ mcmember; int logcount; struct net_device* dev; } ;
struct ib_sa_multicast {int rec; struct ipoib_mcast* context; } ;


 int ENETRESET ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int dev_kfree_skb_any (int ) ;
 int ipoib_dbg_mcast (int ,char*,int ,int) ;
 int ipoib_mcast_join_finish (struct ipoib_mcast*,int *) ;
 int netdev_priv (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int
ipoib_mcast_sendonly_join_complete(int status,
       struct ib_sa_multicast *multicast)
{
 struct ipoib_mcast *mcast = multicast->context;
 struct net_device *dev = mcast->dev;


 if (status == -ENETRESET)
  return 0;

 if (!status)
  status = ipoib_mcast_join_finish(mcast, &multicast->rec);

 if (status) {
  if (mcast->logcount++ < 20)
   ipoib_dbg_mcast(netdev_priv(dev), "multicast join failed for %pI6, status %d\n",
     mcast->mcmember.mgid.raw, status);


  netif_tx_lock_bh(dev);
  while (!skb_queue_empty(&mcast->pkt_queue)) {
   ++dev->stats.tx_dropped;
   dev_kfree_skb_any(skb_dequeue(&mcast->pkt_queue));
  }
  netif_tx_unlock_bh(dev);


  status = test_and_clear_bit(IPOIB_MCAST_FLAG_BUSY,
         &mcast->flags);
 }
 return status;
}
