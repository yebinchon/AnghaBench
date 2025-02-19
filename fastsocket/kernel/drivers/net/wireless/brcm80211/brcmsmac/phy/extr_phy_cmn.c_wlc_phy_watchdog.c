
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int phynoise_now; scalar_t__ phycal_txpower; scalar_t__ nphy_perical; scalar_t__ nphy_perical_last; scalar_t__ phy_lastcal; scalar_t__ disable_percal; scalar_t__ carrier_suppr_disable; TYPE_1__* sh; scalar_t__ phy_forcecal; scalar_t__ phynoise_state; int radio_chanspec; int watchdog_override; } ;
struct TYPE_2__ {int now; scalar_t__ fast_timer; scalar_t__ glacial_timer; } ;


 scalar_t__ ASSOC_INPROG_PHY (struct brcms_phy*) ;
 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL ;
 int PHY_NOISE_SAMPLE_MON ;
 scalar_t__ PHY_PERICAL_DISABLE ;
 scalar_t__ PHY_PERICAL_MANUAL ;
 int PHY_PERICAL_WATCHDOG ;
 scalar_t__ PLT_INPROG_PHY (struct brcms_phy*) ;
 int SCAN_INPROG_PHY (struct brcms_phy*) ;
 scalar_t__ SCAN_RM_IN_PROGRESS (struct brcms_phy*) ;
 int wlc_lcnphy_calib_modes (struct brcms_phy*,int ) ;
 int wlc_phy_cal_perical (struct brcms_phy_pub*,int ) ;
 scalar_t__ wlc_phy_cal_txpower_recalc_sw (struct brcms_phy*) ;
 int wlc_phy_noise_sample_request (struct brcms_phy_pub*,int ,int ) ;
 int wlc_phy_txpwr_papd_cal_nphy (struct brcms_phy*) ;

void wlc_phy_watchdog(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 bool delay_phy_cal = 0;
 pi->sh->now++;

 if (!pi->watchdog_override)
  return;

 if (!(SCAN_RM_IN_PROGRESS(pi) || PLT_INPROG_PHY(pi)))
  wlc_phy_noise_sample_request((struct brcms_phy_pub *) pi,
          PHY_NOISE_SAMPLE_MON,
          CHSPEC_CHANNEL(pi->
           radio_chanspec));

 if (pi->phynoise_state && (pi->sh->now - pi->phynoise_now) > 5)
  pi->phynoise_state = 0;

 if ((!pi->phycal_txpower) ||
     ((pi->sh->now - pi->phycal_txpower) >= pi->sh->fast_timer)) {

  if (!SCAN_INPROG_PHY(pi) && wlc_phy_cal_txpower_recalc_sw(pi))
   pi->phycal_txpower = pi->sh->now;
 }

 if ((SCAN_RM_IN_PROGRESS(pi) || PLT_INPROG_PHY(pi)
      || ASSOC_INPROG_PHY(pi)))
  return;

 if (ISNPHY(pi) && !pi->disable_percal && !delay_phy_cal) {

  if ((pi->nphy_perical != PHY_PERICAL_DISABLE) &&
      (pi->nphy_perical != PHY_PERICAL_MANUAL) &&
      ((pi->sh->now - pi->nphy_perical_last) >=
       pi->sh->glacial_timer))
   wlc_phy_cal_perical((struct brcms_phy_pub *) pi,
         PHY_PERICAL_WATCHDOG);

  wlc_phy_txpwr_papd_cal_nphy(pi);
 }

 if (ISLCNPHY(pi)) {
  if (pi->phy_forcecal ||
      ((pi->sh->now - pi->phy_lastcal) >=
       pi->sh->glacial_timer)) {
   if (!(SCAN_RM_IN_PROGRESS(pi) || ASSOC_INPROG_PHY(pi)))
    wlc_lcnphy_calib_modes(
     pi,
     LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL);
   if (!
       (SCAN_RM_IN_PROGRESS(pi) || PLT_INPROG_PHY(pi)
        || ASSOC_INPROG_PHY(pi)
        || pi->carrier_suppr_disable
        || pi->disable_percal))
    wlc_lcnphy_calib_modes(pi,
             PHY_PERICAL_WATCHDOG);
  }
 }
}
