
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radio_20xx_regs {int dummy; } ;
struct TYPE_2__ {int radiorev; int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ NREV_IS (int ,int) ;
 struct radio_20xx_regs* regs_2057_rev4 ;
 struct radio_20xx_regs* regs_2057_rev5 ;
 struct radio_20xx_regs* regs_2057_rev5v1 ;
 struct radio_20xx_regs* regs_2057_rev7 ;
 struct radio_20xx_regs* regs_2057_rev8 ;
 int wlc_phy_init_radio_regs_allbands (struct brcms_phy*,struct radio_20xx_regs*) ;

__attribute__((used)) static void wlc_phy_radio_init_2057(struct brcms_phy *pi)
{
 struct radio_20xx_regs *regs_2057_ptr = ((void*)0);

 if (NREV_IS(pi->pubpi.phy_rev, 7)) {
  regs_2057_ptr = regs_2057_rev4;
 } else if (NREV_IS(pi->pubpi.phy_rev, 8)
     || NREV_IS(pi->pubpi.phy_rev, 9)) {
  switch (pi->pubpi.radiorev) {
  case 5:

   if (NREV_IS(pi->pubpi.phy_rev, 8))
    regs_2057_ptr = regs_2057_rev5;
   else if (NREV_IS(pi->pubpi.phy_rev, 9))
    regs_2057_ptr = regs_2057_rev5v1;
   break;

  case 7:

   regs_2057_ptr = regs_2057_rev7;
   break;

  case 8:

   regs_2057_ptr = regs_2057_rev8;
   break;

  default:
   break;
  }
 }

 wlc_phy_init_radio_regs_allbands(pi, regs_2057_ptr);
}
