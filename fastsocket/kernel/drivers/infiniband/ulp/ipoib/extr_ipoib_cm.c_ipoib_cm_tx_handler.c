
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_neigh {int * cm; } ;
struct TYPE_2__ {int reap_task; int reap_list; } ;
struct ipoib_dev_priv {int lock; TYPE_1__ cm; struct net_device* dev; } ;
struct ipoib_cm_tx {int list; int flags; struct ipoib_neigh* neigh; int dev; } ;
struct ib_cm_id {struct ipoib_cm_tx* context; } ;
struct ib_cm_event {int event; } ;



 int IB_CM_REJ_CONSUMER_DEFINED ;




 int IPOIB_FLAG_INITIALIZED ;
 int ib_send_cm_drep (struct ib_cm_id*,int *,int ) ;
 int ib_send_cm_rej (struct ib_cm_id*,int ,int *,int ,int *,int ) ;
 int ipoib_cm_rep_handler (struct ib_cm_id*,struct ib_cm_event*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,...) ;
 int ipoib_neigh_free (struct ipoib_neigh*) ;
 int ipoib_workqueue ;
 int list_move (int *,int *) ;
 struct ipoib_dev_priv* netdev_priv (int ) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int ipoib_cm_tx_handler(struct ib_cm_id *cm_id,
          struct ib_cm_event *event)
{
 struct ipoib_cm_tx *tx = cm_id->context;
 struct ipoib_dev_priv *priv = netdev_priv(tx->dev);
 struct net_device *dev = priv->dev;
 struct ipoib_neigh *neigh;
 unsigned long flags;
 int ret;

 switch (event->event) {
 case 132:
  ipoib_dbg(priv, "DREQ received.\n");
  ib_send_cm_drep(cm_id, ((void*)0), 0);
  break;
 case 130:
  ipoib_dbg(priv, "REP received.\n");
  ret = ipoib_cm_rep_handler(cm_id, event);
  if (ret)
   ib_send_cm_rej(cm_id, IB_CM_REJ_CONSUMER_DEFINED,
           ((void*)0), 0, ((void*)0), 0);
  break;
 case 129:
 case 131:
 case 128:
  ipoib_dbg(priv, "CM error %d.\n", event->event);
  netif_tx_lock_bh(dev);
  spin_lock_irqsave(&priv->lock, flags);
  neigh = tx->neigh;

  if (neigh) {
   neigh->cm = ((void*)0);
   ipoib_neigh_free(neigh);

   tx->neigh = ((void*)0);
  }

  if (test_and_clear_bit(IPOIB_FLAG_INITIALIZED, &tx->flags)) {
   list_move(&tx->list, &priv->cm.reap_list);
   queue_work(ipoib_workqueue, &priv->cm.reap_task);
  }

  spin_unlock_irqrestore(&priv->lock, flags);
  netif_tx_unlock_bh(dev);
  break;
 default:
  break;
 }

 return 0;
}
