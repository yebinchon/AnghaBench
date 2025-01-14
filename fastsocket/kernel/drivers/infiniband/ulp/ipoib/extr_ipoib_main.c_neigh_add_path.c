
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ipoib_path {int query; TYPE_2__* ah; int neigh_list; } ;
struct ipoib_neigh {int queue; TYPE_2__* ah; int daddr; int list; } ;
struct ipoib_dev_priv {int lock; } ;
struct TYPE_4__ {int ref; } ;


 scalar_t__ IPOIB_MAX_PATH_REC_QUEUE ;
 int IPOIB_QPN (int *) ;
 int __path_add (struct net_device*,struct ipoib_path*) ;
 struct ipoib_path* __path_find (struct net_device*,int *) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ipoib_cm_create_tx (struct net_device*,struct ipoib_path*,struct ipoib_neigh*) ;
 scalar_t__ ipoib_cm_enabled (struct net_device*,int ) ;
 int ipoib_cm_get (struct ipoib_neigh*) ;
 int ipoib_cm_set (struct ipoib_neigh*,int ) ;
 struct ipoib_neigh* ipoib_neigh_alloc (int *,struct net_device*) ;
 int ipoib_neigh_free (struct ipoib_neigh*) ;
 int ipoib_neigh_put (struct ipoib_neigh*) ;
 int ipoib_send (struct net_device*,struct sk_buff*,TYPE_2__*,int ) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,scalar_t__) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 struct ipoib_path* path_rec_create (struct net_device*,int *) ;
 scalar_t__ path_rec_start (struct net_device*,struct ipoib_path*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void neigh_add_path(struct sk_buff *skb, u8 *daddr,
      struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ipoib_path *path;
 struct ipoib_neigh *neigh;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 neigh = ipoib_neigh_alloc(daddr, dev);
 if (!neigh) {
  spin_unlock_irqrestore(&priv->lock, flags);
  ++dev->stats.tx_dropped;
  dev_kfree_skb_any(skb);
  return;
 }

 path = __path_find(dev, daddr + 4);
 if (!path) {
  path = path_rec_create(dev, daddr + 4);
  if (!path)
   goto err_path;

  __path_add(dev, path);
 }

 list_add_tail(&neigh->list, &path->neigh_list);

 if (path->ah) {
  kref_get(&path->ah->ref);
  neigh->ah = path->ah;

  if (ipoib_cm_enabled(dev, neigh->daddr)) {
   if (!ipoib_cm_get(neigh))
    ipoib_cm_set(neigh, ipoib_cm_create_tx(dev, path, neigh));
   if (!ipoib_cm_get(neigh)) {
    ipoib_neigh_free(neigh);
    goto err_drop;
   }
   if (skb_queue_len(&neigh->queue) < IPOIB_MAX_PATH_REC_QUEUE)
    __skb_queue_tail(&neigh->queue, skb);
   else {
    ipoib_warn(priv, "queue length limit %d. Packet drop.\n",
        skb_queue_len(&neigh->queue));
    goto err_drop;
   }
  } else {
   spin_unlock_irqrestore(&priv->lock, flags);
   ipoib_send(dev, skb, path->ah, IPOIB_QPN(daddr));
   ipoib_neigh_put(neigh);
   return;
  }
 } else {
  neigh->ah = ((void*)0);

  if (!path->query && path_rec_start(dev, path))
   goto err_path;

  __skb_queue_tail(&neigh->queue, skb);
 }

 spin_unlock_irqrestore(&priv->lock, flags);
 ipoib_neigh_put(neigh);
 return;

err_path:
 ipoib_neigh_free(neigh);
err_drop:
 ++dev->stats.tx_dropped;
 dev_kfree_skb_any(skb);

 spin_unlock_irqrestore(&priv->lock, flags);
 ipoib_neigh_put(neigh);
}
