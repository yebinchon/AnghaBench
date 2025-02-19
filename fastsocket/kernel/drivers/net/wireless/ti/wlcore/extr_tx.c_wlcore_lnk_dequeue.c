
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wl1271_link {TYPE_1__* wlvif; int * tx_queue; } ;
struct wl1271 {scalar_t__* tx_queue_count; int wl_lock; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__* tx_queue_count; } ;


 int WARN_ON_ONCE (int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct sk_buff *wlcore_lnk_dequeue(struct wl1271 *wl,
       struct wl1271_link *lnk, u8 q)
{
 struct sk_buff *skb;
 unsigned long flags;

 skb = skb_dequeue(&lnk->tx_queue[q]);
 if (skb) {
  spin_lock_irqsave(&wl->wl_lock, flags);
  WARN_ON_ONCE(wl->tx_queue_count[q] <= 0);
  wl->tx_queue_count[q]--;
  if (lnk->wlvif) {
   WARN_ON_ONCE(lnk->wlvif->tx_queue_count[q] <= 0);
   lnk->wlvif->tx_queue_count[q]--;
  }
  spin_unlock_irqrestore(&wl->wl_lock, flags);
 }

 return skb;
}
