
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wait_queue_t ;
typedef int ulong ;
struct sk_buff {scalar_t__ len; } ;
struct btmrvl_thread {int wait_q; struct btmrvl_private* priv; } ;
struct TYPE_8__ {TYPE_2__* hcidev; int tx_dnld_rdy; } ;
struct btmrvl_private {TYPE_3__ btmrvl_dev; int driver_lock; int (* hw_wakeup_firmware ) (struct btmrvl_private*) ;struct btmrvl_adapter* adapter; } ;
struct btmrvl_adapter {scalar_t__ ps_state; int tx_queue; scalar_t__ wakeup_tries; scalar_t__ int_count; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_6__ {int byte_tx; int err_tx; } ;
struct TYPE_7__ {TYPE_1__ stat; } ;


 int BT_DBG (char*) ;
 int PF_NOFREEZE ;
 scalar_t__ PS_SLEEP ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ btmrvl_tx_pkt (struct btmrvl_private*,struct sk_buff*) ;
 TYPE_4__* current ;
 int init_waitqueue_entry (int *,TYPE_4__*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ kthread_should_stop () ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct btmrvl_private*) ;

__attribute__((used)) static int btmrvl_service_main_thread(void *data)
{
 struct btmrvl_thread *thread = data;
 struct btmrvl_private *priv = thread->priv;
 struct btmrvl_adapter *adapter = priv->adapter;
 wait_queue_t wait;
 struct sk_buff *skb;
 ulong flags;

 init_waitqueue_entry(&wait, current);

 current->flags |= PF_NOFREEZE;

 for (;;) {
  add_wait_queue(&thread->wait_q, &wait);

  set_current_state(TASK_INTERRUPTIBLE);

  if (adapter->wakeup_tries ||
    ((!adapter->int_count) &&
    (!priv->btmrvl_dev.tx_dnld_rdy ||
    skb_queue_empty(&adapter->tx_queue)))) {
   BT_DBG("main_thread is sleeping...");
   schedule();
  }

  set_current_state(TASK_RUNNING);

  remove_wait_queue(&thread->wait_q, &wait);

  BT_DBG("main_thread woke up");

  if (kthread_should_stop()) {
   BT_DBG("main_thread: break from main thread");
   break;
  }

  spin_lock_irqsave(&priv->driver_lock, flags);
  if (adapter->int_count) {
   adapter->int_count = 0;
  } else if (adapter->ps_state == PS_SLEEP &&
     !skb_queue_empty(&adapter->tx_queue)) {
   spin_unlock_irqrestore(&priv->driver_lock, flags);
   adapter->wakeup_tries++;
   priv->hw_wakeup_firmware(priv);
   continue;
  }
  spin_unlock_irqrestore(&priv->driver_lock, flags);

  if (adapter->ps_state == PS_SLEEP)
   continue;

  if (!priv->btmrvl_dev.tx_dnld_rdy)
   continue;

  skb = skb_dequeue(&adapter->tx_queue);
  if (skb) {
   if (btmrvl_tx_pkt(priv, skb))
    priv->btmrvl_dev.hcidev->stat.err_tx++;
   else
    priv->btmrvl_dev.hcidev->stat.byte_tx += skb->len;

   kfree_skb(skb);
  }
 }

 return 0;
}
