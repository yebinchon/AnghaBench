
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wl1271 {int rate_policies_map; } ;


 int EBUSY ;
 scalar_t__ WL12XX_MAX_RATE_POLICIES ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int wl12xx_allocate_rate_policy(struct wl1271 *wl, u8 *idx)
{
 u8 policy = find_first_zero_bit(wl->rate_policies_map,
     WL12XX_MAX_RATE_POLICIES);
 if (policy >= WL12XX_MAX_RATE_POLICIES)
  return -EBUSY;

 __set_bit(policy, wl->rate_policies_map);
 *idx = policy;
 return 0;
}
