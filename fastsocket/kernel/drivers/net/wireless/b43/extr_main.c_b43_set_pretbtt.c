
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct b43_wldev {TYPE_1__ phy; int wl; } ;


 int B43_MMIO_TSF_CFP_PRETBTT ;
 scalar_t__ B43_PHYTYPE_A ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_PRETBTT ;
 int NL80211_IFTYPE_ADHOC ;
 scalar_t__ b43_is_mode (int ,int ) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_set_pretbtt(struct b43_wldev *dev)
{
 u16 pretbtt;


 if (b43_is_mode(dev->wl, NL80211_IFTYPE_ADHOC)) {
  pretbtt = 2;
 } else {
  if (dev->phy.type == B43_PHYTYPE_A)
   pretbtt = 120;
  else
   pretbtt = 250;
 }
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_PRETBTT, pretbtt);
 b43_write16(dev, B43_MMIO_TSF_CFP_PRETBTT, pretbtt);
}
