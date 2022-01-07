
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {int lcnphy_cal_counter; int lcnphy_cal_temper; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;



 int LCNPHY_TEMPSENSE (int ) ;




 int wlc_2064_vco_cal (struct brcms_phy*) ;
 int wlc_lcnphy_glacial_timer_based_cal (struct brcms_phy*) ;
 int wlc_lcnphy_periodic_cal (struct brcms_phy*) ;
 int wlc_lcnphy_tempsense (struct brcms_phy*,int ) ;
 int wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 int wlc_lcnphy_tx_power_adjustment (struct brcms_phy_pub*) ;

void wlc_lcnphy_calib_modes(struct brcms_phy *pi, uint mode)
{
 u16 temp_new;
 int temp1, temp2, temp_diff;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 switch (mode) {
 case 130:
  break;
 case 131:
  wlc_lcnphy_periodic_cal(pi);
  break;
 case 129:
  wlc_lcnphy_periodic_cal(pi);
  break;
 case 128:
  if (wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi)) {
   temp_new = wlc_lcnphy_tempsense(pi, 0);
   temp1 = LCNPHY_TEMPSENSE(temp_new);
   temp2 = LCNPHY_TEMPSENSE(pi_lcn->lcnphy_cal_temper);
   temp_diff = temp1 - temp2;
   if ((pi_lcn->lcnphy_cal_counter > 90) ||
       (temp_diff > 60) || (temp_diff < -60)) {
    wlc_lcnphy_glacial_timer_based_cal(pi);
    wlc_2064_vco_cal(pi);
    pi_lcn->lcnphy_cal_temper = temp_new;
    pi_lcn->lcnphy_cal_counter = 0;
   } else
    pi_lcn->lcnphy_cal_counter++;
  }
  break;
 case 132:
  if (wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi))
   wlc_lcnphy_tx_power_adjustment(
    (struct brcms_phy_pub *) pi);
  break;
 }
}
