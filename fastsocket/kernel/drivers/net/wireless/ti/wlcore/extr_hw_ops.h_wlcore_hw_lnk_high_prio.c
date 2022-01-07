
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271_link {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* lnk_high_prio ) (struct wl1271*,int ,struct wl1271_link*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,int ,struct wl1271_link*) ;

__attribute__((used)) static inline bool
wlcore_hw_lnk_high_prio(struct wl1271 *wl, u8 hlid,
   struct wl1271_link *lnk)
{
 if (!wl->ops->lnk_high_prio)
  BUG_ON(1);

 return wl->ops->lnk_high_prio(wl, hlid, lnk);
}
