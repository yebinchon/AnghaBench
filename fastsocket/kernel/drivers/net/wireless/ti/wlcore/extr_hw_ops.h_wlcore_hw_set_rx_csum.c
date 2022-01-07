
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271_rx_descriptor {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* set_rx_csum ) (struct wl1271*,struct wl1271_rx_descriptor*,struct sk_buff*) ;} ;


 int stub1 (struct wl1271*,struct wl1271_rx_descriptor*,struct sk_buff*) ;

__attribute__((used)) static inline void
wlcore_hw_set_rx_csum(struct wl1271 *wl,
        struct wl1271_rx_descriptor *desc,
        struct sk_buff *skb)
{
 if (wl->ops->set_rx_csum)
  wl->ops->set_rx_csum(wl, desc, skb);
}
