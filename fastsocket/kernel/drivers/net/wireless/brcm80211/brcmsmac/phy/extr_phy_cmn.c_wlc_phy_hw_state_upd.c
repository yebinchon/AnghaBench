
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int up; } ;



void wlc_phy_hw_state_upd(struct brcms_phy_pub *pih, bool newstate)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (!pi || !pi->sh)
  return;

 pi->sh->up = newstate;
}
