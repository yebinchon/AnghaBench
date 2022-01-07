
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {unsigned long len; int users; struct ll_header* data; int protocol; } ;
struct net_device {struct ctcm_priv* ml_priv; } ;
struct ll_header {int length; scalar_t__ unused; int type; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; } ;
struct ctcm_priv {TYPE_1__ stats; } ;
struct TYPE_6__ {unsigned long txlen; int doios_single; int send_stamp; } ;
struct channel {int collect_len; int max_bufsize; struct net_device* netdev; int io_queue; int timer; TYPE_2__ prof; int cdev; TYPE_3__* ccw; int fsm; scalar_t__ retry; struct sk_buff* trans_skb; int collect_lock; int collect_queue; } ;
typedef int __u16 ;
struct TYPE_7__ {int count; } ;


 int CTCM_TIME_5_SEC ;
 int CTC_EVENT_TIMER ;
 int CTC_STATE_TX ;
 scalar_t__ CTC_STATE_TXIDLE ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 unsigned long LL_HEADER_LENGTH ;
 struct sk_buff* alloc_skb (int,int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ccw_device_start (int ,TYPE_3__*,unsigned long,int,int ) ;
 int ctcm_ccw_check_rc (struct channel*,int,char*) ;
 scalar_t__ ctcm_checkalloc_buffer (struct channel*) ;
 int ctcm_clear_busy (struct net_device*) ;
 int current_kernel_time () ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int fsm_addtimer (int *,int ,int ,struct channel*) ;
 int fsm_deltimer (int *) ;
 scalar_t__ fsm_getstate (int ) ;
 int fsm_newstate (int ,int ) ;
 int * get_ccwdev_lock (int ) ;
 int memcpy (scalar_t__,struct ll_header*,unsigned long) ;
 scalar_t__ set_normalized_cda (TYPE_3__*,struct ll_header*) ;
 int skb_copy_from_linear_data (struct sk_buff*,scalar_t__,int) ;
 int skb_dequeue_tail (int *) ;
 int skb_pull (struct sk_buff*,unsigned long) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_tail_pointer (struct sk_buff*) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ctcm_transmit_skb(struct channel *ch, struct sk_buff *skb)
{
 unsigned long saveflags;
 struct ll_header header;
 int rc = 0;
 __u16 block_len;
 int ccw_idx;
 struct sk_buff *nskb;
 unsigned long hi;





 spin_lock_irqsave(&ch->collect_lock, saveflags);
 if (fsm_getstate(ch->fsm) != CTC_STATE_TXIDLE) {
  int l = skb->len + LL_HEADER_LENGTH;

  if (ch->collect_len + l > ch->max_bufsize - 2) {
   spin_unlock_irqrestore(&ch->collect_lock, saveflags);
   return -EBUSY;
  } else {
   atomic_inc(&skb->users);
   header.length = l;
   header.type = skb->protocol;
   header.unused = 0;
   memcpy(skb_push(skb, LL_HEADER_LENGTH), &header,
          LL_HEADER_LENGTH);
   skb_queue_tail(&ch->collect_queue, skb);
   ch->collect_len += l;
  }
  spin_unlock_irqrestore(&ch->collect_lock, saveflags);
    goto done;
 }
 spin_unlock_irqrestore(&ch->collect_lock, saveflags);




 atomic_inc(&skb->users);
 ch->prof.txlen += skb->len;
 header.length = skb->len + LL_HEADER_LENGTH;
 header.type = skb->protocol;
 header.unused = 0;
 memcpy(skb_push(skb, LL_HEADER_LENGTH), &header, LL_HEADER_LENGTH);
 block_len = skb->len + 2;
 *((__u16 *)skb_push(skb, 2)) = block_len;





 hi = ((unsigned long)skb_tail_pointer(skb) + LL_HEADER_LENGTH) >> 31;
 if (hi) {
  nskb = alloc_skb(skb->len, GFP_ATOMIC | GFP_DMA);
  if (!nskb) {
   atomic_dec(&skb->users);
   skb_pull(skb, LL_HEADER_LENGTH + 2);
   ctcm_clear_busy(ch->netdev);
   return -ENOMEM;
  } else {
   memcpy(skb_put(nskb, skb->len), skb->data, skb->len);
   atomic_inc(&nskb->users);
   atomic_dec(&skb->users);
   dev_kfree_skb_irq(skb);
   skb = nskb;
  }
 }

 ch->ccw[4].count = block_len;
 if (set_normalized_cda(&ch->ccw[4], skb->data)) {





  if (ctcm_checkalloc_buffer(ch)) {




   atomic_dec(&skb->users);
   skb_pull(skb, LL_HEADER_LENGTH + 2);
   ctcm_clear_busy(ch->netdev);
   return -ENOMEM;
  }

  skb_reset_tail_pointer(ch->trans_skb);
  ch->trans_skb->len = 0;
  ch->ccw[1].count = skb->len;
  skb_copy_from_linear_data(skb,
    skb_put(ch->trans_skb, skb->len), skb->len);
  atomic_dec(&skb->users);
  dev_kfree_skb_irq(skb);
  ccw_idx = 0;
 } else {
  skb_queue_tail(&ch->io_queue, skb);
  ccw_idx = 3;
 }
 ch->retry = 0;
 fsm_newstate(ch->fsm, CTC_STATE_TX);
 fsm_addtimer(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
 spin_lock_irqsave(get_ccwdev_lock(ch->cdev), saveflags);
 ch->prof.send_stamp = current_kernel_time();
 rc = ccw_device_start(ch->cdev, &ch->ccw[ccw_idx],
     (unsigned long)ch, 0xff, 0);
 spin_unlock_irqrestore(get_ccwdev_lock(ch->cdev), saveflags);
 if (ccw_idx == 3)
  ch->prof.doios_single++;
 if (rc != 0) {
  fsm_deltimer(&ch->timer);
  ctcm_ccw_check_rc(ch, rc, "single skb TX");
  if (ccw_idx == 3)
   skb_dequeue_tail(&ch->io_queue);




  skb_pull(skb, LL_HEADER_LENGTH + 2);
 } else if (ccw_idx == 0) {
  struct net_device *dev = ch->netdev;
  struct ctcm_priv *priv = dev->ml_priv;
  priv->stats.tx_packets++;
  priv->stats.tx_bytes += skb->len - LL_HEADER_LENGTH;
 }
done:
 ctcm_clear_busy(ch->netdev);
 return rc;
}
