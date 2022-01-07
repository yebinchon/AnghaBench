
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_rate_control_register (int *) ;
 int rs_mvm_ops ;

int iwl_mvm_rate_control_register(void)
{
 return ieee80211_rate_control_register(&rs_mvm_ops);
}
