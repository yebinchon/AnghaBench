
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wl1271 {int rate_policies_map; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ WL12XX_MAX_RATE_POLICIES ;
 int __clear_bit (scalar_t__,int ) ;

__attribute__((used)) static void wl12xx_free_rate_policy(struct wl1271 *wl, u8 *idx)
{
 if (WARN_ON(*idx >= WL12XX_MAX_RATE_POLICIES))
  return;

 __clear_bit(*idx, wl->rate_policies_map);
 *idx = WL12XX_MAX_RATE_POLICIES;
}
