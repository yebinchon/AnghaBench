
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_rate_control_register (int *) ;
 int rs_4965_ops ;

int
il4965_rate_control_register(void)
{
 return ieee80211_rate_control_register(&rs_4965_ops);
}
