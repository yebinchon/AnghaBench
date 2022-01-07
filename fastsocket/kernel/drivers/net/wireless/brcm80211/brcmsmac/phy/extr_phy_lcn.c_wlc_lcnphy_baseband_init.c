
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ LCNREV_IS (int ,int) ;
 int wlc_lcnphy_bu_tweaks (struct brcms_phy*) ;
 int wlc_lcnphy_rev0_baseband_init (struct brcms_phy*) ;
 int wlc_lcnphy_rev2_baseband_init (struct brcms_phy*) ;
 int wlc_lcnphy_tbl_init (struct brcms_phy*) ;

__attribute__((used)) static void wlc_lcnphy_baseband_init(struct brcms_phy *pi)
{

 wlc_lcnphy_tbl_init(pi);
 wlc_lcnphy_rev0_baseband_init(pi);
 if (LCNREV_IS(pi->pubpi.phy_rev, 2))
  wlc_lcnphy_rev2_baseband_init(pi);
 wlc_lcnphy_bu_tweaks(pi);
}
