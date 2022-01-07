
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stir_cb {unsigned int speed; scalar_t__ receiving; struct net_device* netdev; int tx_pending; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int name; int dev; } ;


 int CTRL1_RXPWD ;
 int CTRL1_TXPWD ;
 int REG_CTRL1 ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ change_speed (struct stir_cb*,unsigned int) ;
 int current ;
 int dev_info (int *,char*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ fifo_txwait (struct stir_cb*,int) ;
 int freezing (int ) ;
 scalar_t__ irda_device_txqueue_empty (struct net_device*) ;
 unsigned int irda_get_next_speed (struct sk_buff*) ;
 int kthread_should_stop () ;
 int msleep (int) ;
 scalar_t__ net_ratelimit () ;
 int netif_wake_queue (struct net_device*) ;
 int receive_start (struct stir_cb*) ;
 int receive_stop (struct stir_cb*) ;
 int refrigerator () ;
 int schedule () ;
 int set_current_state (int ) ;
 int stir_send (struct stir_cb*,struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;
 int write_reg (struct stir_cb*,int ,int) ;
 struct sk_buff* xchg (int *,int *) ;

__attribute__((used)) static int stir_transmit_thread(void *arg)
{
 struct stir_cb *stir = arg;
 struct net_device *dev = stir->netdev;
 struct sk_buff *skb;

        while (!kthread_should_stop()) {
  skb = xchg(&stir->tx_pending, ((void*)0));
  if (skb) {
   unsigned new_speed = irda_get_next_speed(skb);
   netif_wake_queue(dev);

   if (skb->len > 0)
    stir_send(stir, skb);
   dev_kfree_skb(skb);

   if ((new_speed != -1) && (stir->speed != new_speed)) {
    if (fifo_txwait(stir, -1) ||
        change_speed(stir, new_speed))
     break;
   }
   continue;
  }


  if (!stir->receiving
      && irda_device_txqueue_empty(dev)) {

   if (fifo_txwait(stir, -1))
    break;

   if (unlikely(receive_start(stir))) {
    if (net_ratelimit())
     dev_info(&dev->dev,
       "%s: receive usb submit failed\n",
       stir->netdev->name);
    stir->receiving = 0;
    msleep(10);
    continue;
   }
  }


                set_current_state(TASK_INTERRUPTIBLE);
                schedule();

 }
        return 0;
}
