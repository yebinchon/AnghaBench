
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wl1271_link {int * tx_queue; } ;
struct wl1271 {struct wl1271_link* links; } ;
struct sk_buff {int dummy; } ;


 size_t WL12XX_INVALID_LINK_ID ;
 int skb_queue_empty (int *) ;
 int wlcore_hw_lnk_high_prio (struct wl1271*,size_t,struct wl1271_link*) ;
 scalar_t__ wlcore_hw_lnk_low_prio (struct wl1271*,size_t,struct wl1271_link*) ;
 struct sk_buff* wlcore_lnk_dequeue (struct wl1271*,struct wl1271_link*,size_t) ;

__attribute__((used)) static struct sk_buff *wlcore_lnk_dequeue_high_prio(struct wl1271 *wl,
          u8 hlid, u8 ac,
          u8 *low_prio_hlid)
{
 struct wl1271_link *lnk = &wl->links[hlid];

 if (!wlcore_hw_lnk_high_prio(wl, hlid, lnk)) {
  if (*low_prio_hlid == WL12XX_INVALID_LINK_ID &&
      !skb_queue_empty(&lnk->tx_queue[ac]) &&
      wlcore_hw_lnk_low_prio(wl, hlid, lnk))

   *low_prio_hlid = hlid;

  return ((void*)0);
 }

 return wlcore_lnk_dequeue(wl, lnk, ac);
}
