
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int tx_dropped; } ;
struct net_device {TYPE_4__ stats; } ;
struct ipoib_neigh {int list; TYPE_5__* ah; } ;
struct TYPE_7__ {int raw; } ;
struct TYPE_8__ {TYPE_2__ mgid; } ;
struct ipoib_mcast {TYPE_5__* ah; int neigh_list; int flags; int pkt_queue; int list; TYPE_3__ mcmember; } ;
struct ipoib_dev_priv {int lock; int multicast_list; TYPE_1__* broadcast; int flags; } ;
struct TYPE_10__ {int ref; } ;
struct TYPE_6__ {int flags; } ;


 int IB_MULTICAST_QPN ;
 int IPOIB_FLAG_OPER_UP ;
 scalar_t__ IPOIB_MAX_MCAST_QUEUE ;
 int IPOIB_MCAST_FLAG_ATTACHED ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int IPOIB_MCAST_FLAG_SENDONLY ;
 int __ipoib_mcast_add (struct net_device*,struct ipoib_mcast*) ;
 struct ipoib_mcast* __ipoib_mcast_find (struct net_device*,void*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,...) ;
 struct ipoib_mcast* ipoib_mcast_alloc (struct net_device*,int ) ;
 int ipoib_mcast_sendonly_join (struct ipoib_mcast*) ;
 struct ipoib_neigh* ipoib_neigh_alloc (int *,struct net_device*) ;
 struct ipoib_neigh* ipoib_neigh_get (struct net_device*,int *) ;
 int ipoib_neigh_put (struct ipoib_neigh*) ;
 int ipoib_send (struct net_device*,struct sk_buff*,TYPE_5__*,int ) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,void*,int) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void ipoib_mcast_send(struct net_device *dev, u8 *daddr, struct sk_buff *skb)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ipoib_mcast *mcast;
 unsigned long flags;
 void *mgid = daddr + 4;

 spin_lock_irqsave(&priv->lock, flags);

 if (!test_bit(IPOIB_FLAG_OPER_UP, &priv->flags) ||
     !priv->broadcast ||
     !test_bit(IPOIB_MCAST_FLAG_ATTACHED, &priv->broadcast->flags)) {
  ++dev->stats.tx_dropped;
  dev_kfree_skb_any(skb);
  goto unlock;
 }

 mcast = __ipoib_mcast_find(dev, mgid);
 if (!mcast) {

  ipoib_dbg_mcast(priv, "setting up send only multicast group for %pI6\n",
    mgid);

  mcast = ipoib_mcast_alloc(dev, 0);
  if (!mcast) {
   ipoib_warn(priv, "unable to allocate memory for "
       "multicast structure\n");
   ++dev->stats.tx_dropped;
   dev_kfree_skb_any(skb);
   goto out;
  }

  set_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags);
  memcpy(mcast->mcmember.mgid.raw, mgid, sizeof (union ib_gid));
  __ipoib_mcast_add(dev, mcast);
  list_add_tail(&mcast->list, &priv->multicast_list);
 }

 if (!mcast->ah) {
  if (skb_queue_len(&mcast->pkt_queue) < IPOIB_MAX_MCAST_QUEUE)
   skb_queue_tail(&mcast->pkt_queue, skb);
  else {
   ++dev->stats.tx_dropped;
   dev_kfree_skb_any(skb);
  }

  if (test_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags))
   ipoib_dbg_mcast(priv, "no address vector, "
     "but multicast join already started\n");
  else if (test_bit(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags))
   ipoib_mcast_sendonly_join(mcast);





  mcast = ((void*)0);
 }

out:
 if (mcast && mcast->ah) {
  struct ipoib_neigh *neigh;

  spin_unlock_irqrestore(&priv->lock, flags);
  neigh = ipoib_neigh_get(dev, daddr);
  spin_lock_irqsave(&priv->lock, flags);
  if (!neigh) {
   neigh = ipoib_neigh_alloc(daddr, dev);
   if (neigh) {
    kref_get(&mcast->ah->ref);
    neigh->ah = mcast->ah;
    list_add_tail(&neigh->list, &mcast->neigh_list);
   }
  }

  spin_unlock_irqrestore(&priv->lock, flags);
  ipoib_send(dev, skb, mcast->ah, IB_MULTICAST_QPN);
  if (neigh)
   ipoib_neigh_put(neigh);
  return;
 }

unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
}
