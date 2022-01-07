
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mac80211_hwsim_data {scalar_t__ tsf_offset; } ;
typedef int __le64 ;


 int cpu_to_le64 (scalar_t__) ;
 scalar_t__ mac80211_hwsim_get_tsf_raw () ;

__attribute__((used)) static __le64 __mac80211_hwsim_get_tsf(struct mac80211_hwsim_data *data)
{
 u64 now = mac80211_hwsim_get_tsf_raw();
 return cpu_to_le64(now + data->tsf_offset);
}
