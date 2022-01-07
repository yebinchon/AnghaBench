
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; scalar_t__ nphy_perical_last; int measure_hold; } ;
struct TYPE_2__ {scalar_t__ glacial_timer; scalar_t__ now; } ;


 int PHY_HOLD_FOR_MUTE ;
 int PHY_MUTE_FOR_PREISM ;
 int mboolclr (int ,int ) ;
 int mboolset (int ,int ) ;

void wlc_phy_mute_upd(struct brcms_phy_pub *pih, bool mute, u32 flags)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (mute)
  mboolset(pi->measure_hold, PHY_HOLD_FOR_MUTE);
 else
  mboolclr(pi->measure_hold, PHY_HOLD_FOR_MUTE);

 if (!mute && (flags & PHY_MUTE_FOR_PREISM))
  pi->nphy_perical_last = pi->sh->now - pi->sh->glacial_timer;
 return;
}
