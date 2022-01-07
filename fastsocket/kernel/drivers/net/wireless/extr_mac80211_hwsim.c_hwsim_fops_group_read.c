
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mac80211_hwsim_data {int group; } ;



__attribute__((used)) static int hwsim_fops_group_read(void *dat, u64 *val)
{
 struct mac80211_hwsim_data *data = dat;
 *val = data->group;
 return 0;
}
