
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dfq_valid; int wl; } ;


 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 scalar_t__ b43_is_mode (int ,int ) ;
 int b43_power_saving_ctl_bits (struct b43_wldev*,int ) ;

__attribute__((used)) static void handle_irq_tbtt_indication(struct b43_wldev *dev)
{
 if (b43_is_mode(dev->wl, NL80211_IFTYPE_AP)) {

 } else {
  if (1 )
   b43_power_saving_ctl_bits(dev, 0);
 }
 if (b43_is_mode(dev->wl, NL80211_IFTYPE_ADHOC))
  dev->dfq_valid = 1;
}
