
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int p54u_free_urbs (struct ieee80211_hw*) ;

__attribute__((used)) static void p54u_stop(struct ieee80211_hw *dev)
{





 p54u_free_urbs(dev);
}
