
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath_rate_ops ;
 int ieee80211_rate_control_unregister (int *) ;

void ath_rate_control_unregister(void)
{
 ieee80211_rate_control_unregister(&ath_rate_ops);
}
