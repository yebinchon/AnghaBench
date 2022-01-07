
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct ieee80211_sta_ht_cap {int dummy; } ;
struct TYPE_2__ {int (* set_peer_cap ) (struct wl1271*,struct ieee80211_sta_ht_cap*,int,int ,int ) ;} ;


 int stub1 (struct wl1271*,struct ieee80211_sta_ht_cap*,int,int ,int ) ;

__attribute__((used)) static inline int
wlcore_hw_set_peer_cap(struct wl1271 *wl,
         struct ieee80211_sta_ht_cap *ht_cap,
         bool allow_ht_operation,
         u32 rate_set, u8 hlid)
{
 if (wl->ops->set_peer_cap)
  return wl->ops->set_peer_cap(wl, ht_cap, allow_ht_operation,
          rate_set, hlid);

 return 0;
}
