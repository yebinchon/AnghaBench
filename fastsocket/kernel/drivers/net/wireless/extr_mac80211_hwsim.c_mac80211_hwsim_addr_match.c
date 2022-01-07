
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mac80211_hwsim_data {TYPE_2__* hw; } ;
struct mac80211_hwsim_addr_match_data {int ret; int const* addr; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int perm_addr; } ;


 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (TYPE_2__*,int ,int ,struct mac80211_hwsim_addr_match_data*) ;
 int mac80211_hwsim_addr_iter ;
 scalar_t__ memcmp (int const*,int ,int ) ;

__attribute__((used)) static bool mac80211_hwsim_addr_match(struct mac80211_hwsim_data *data,
          const u8 *addr)
{
 struct mac80211_hwsim_addr_match_data md;

 if (memcmp(addr, data->hw->wiphy->perm_addr, ETH_ALEN) == 0)
  return 1;

 md.ret = 0;
 md.addr = addr;
 ieee80211_iterate_active_interfaces_atomic(data->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         mac80211_hwsim_addr_iter,
         &md);

 return md.ret;
}
