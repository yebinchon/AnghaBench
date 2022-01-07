
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_rate_control_unregister (int *) ;
 int rs_mvm_ops ;

void iwl_mvm_rate_control_unregister(void)
{
 ieee80211_rate_control_unregister(&rs_mvm_ops);
}
