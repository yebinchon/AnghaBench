
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; struct b43_wl* wl; } ;
struct b43_wl {int filter_flags; } ;
struct TYPE_2__ {int core_rev; int chip_id; int chip_rev; } ;


 int B43_MACCTL_AP ;
 int B43_MACCTL_BEACPROMISC ;
 int B43_MACCTL_DISCPMQ ;
 int B43_MACCTL_INFRA ;
 int B43_MACCTL_KEEP_BAD ;
 int B43_MACCTL_KEEP_BADPLCP ;
 int B43_MACCTL_KEEP_CTL ;
 int B43_MACCTL_PROMISC ;
 int B43_MMIO_MACCTL ;
 int FIF_BCN_PRBRESP_PROMISC ;
 int FIF_CONTROL ;
 int FIF_FCSFAIL ;
 int FIF_PLCPFAIL ;
 int FIF_PROMISC_IN_BSS ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ b43_is_mode (struct b43_wl*,int ) ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int,int) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_adjust_opmode(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;
 u32 ctl;
 u16 cfp_pretbtt;

 ctl = b43_read32(dev, B43_MMIO_MACCTL);

 ctl &= ~B43_MACCTL_AP;
 ctl &= ~B43_MACCTL_KEEP_CTL;
 ctl &= ~B43_MACCTL_KEEP_BADPLCP;
 ctl &= ~B43_MACCTL_KEEP_BAD;
 ctl &= ~B43_MACCTL_PROMISC;
 ctl &= ~B43_MACCTL_BEACPROMISC;
 ctl |= B43_MACCTL_INFRA;

 if (b43_is_mode(wl, NL80211_IFTYPE_AP) ||
     b43_is_mode(wl, NL80211_IFTYPE_MESH_POINT))
  ctl |= B43_MACCTL_AP;
 else if (b43_is_mode(wl, NL80211_IFTYPE_ADHOC))
  ctl &= ~B43_MACCTL_INFRA;

 if (wl->filter_flags & FIF_CONTROL)
  ctl |= B43_MACCTL_KEEP_CTL;
 if (wl->filter_flags & FIF_FCSFAIL)
  ctl |= B43_MACCTL_KEEP_BAD;
 if (wl->filter_flags & FIF_PLCPFAIL)
  ctl |= B43_MACCTL_KEEP_BADPLCP;
 if (wl->filter_flags & FIF_PROMISC_IN_BSS)
  ctl |= B43_MACCTL_PROMISC;
 if (wl->filter_flags & FIF_BCN_PRBRESP_PROMISC)
  ctl |= B43_MACCTL_BEACPROMISC;




 if (dev->dev->core_rev <= 4)
  ctl |= B43_MACCTL_PROMISC;

 b43_write32(dev, B43_MMIO_MACCTL, ctl);

 cfp_pretbtt = 2;
 if ((ctl & B43_MACCTL_INFRA) && !(ctl & B43_MACCTL_AP)) {
  if (dev->dev->chip_id == 0x4306 &&
      dev->dev->chip_rev == 3)
   cfp_pretbtt = 100;
  else
   cfp_pretbtt = 50;
 }
 b43_write16(dev, 0x612, cfp_pretbtt);





 if (0 )
  b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_DISCPMQ, 0);
 else
  b43_maskset32(dev, B43_MMIO_MACCTL, ~0, B43_MACCTL_DISCPMQ);
}
