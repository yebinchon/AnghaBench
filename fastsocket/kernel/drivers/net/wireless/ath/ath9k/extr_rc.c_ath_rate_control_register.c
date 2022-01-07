
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath_rate_ops ;
 int ieee80211_rate_control_register (int *) ;

int ath_rate_control_register(void)
{
 return ieee80211_rate_control_register(&ath_rate_ops);
}
