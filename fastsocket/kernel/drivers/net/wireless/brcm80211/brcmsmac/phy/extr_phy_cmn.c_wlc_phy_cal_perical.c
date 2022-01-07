
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {scalar_t__ nphy_perical; int first_cal_after_assoc; void* nphy_lastcal_temp; int radio_chanspec; int nphy_txiqlocal_chanspec; int phycal_tempdelta; int cal_type_override; } ;
typedef void* s16 ;


 int ISNPHY (struct brcms_phy*) ;
 int PHY_PERICAL_AUTO ;
 scalar_t__ PHY_PERICAL_DISABLE ;

 int PHY_PERICAL_FULL ;
 int PHY_PERICAL_INIT_DELAY ;

 scalar_t__ PHY_PERICAL_MANUAL ;
 scalar_t__ PHY_PERICAL_MPHASE ;
 int PHY_PERICAL_MPHASE_PENDING (struct brcms_phy*) ;

 scalar_t__ PHY_PERICAL_SPHASE ;



 int PHY_PERICAL_WDOG_DELAY ;
 int wlc_phy_cal_perical_mphase_reset (struct brcms_phy*) ;
 int wlc_phy_cal_perical_mphase_schedule (struct brcms_phy*,int ) ;
 int wlc_phy_cal_perical_nphy_run (struct brcms_phy*,int ) ;
 void* wlc_phy_tempsense_nphy (struct brcms_phy*) ;

void wlc_phy_cal_perical(struct brcms_phy_pub *pih, u8 reason)
{
 s16 nphy_currtemp = 0;
 s16 delta_temp = 0;
 bool do_periodic_cal = 1;
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (!ISNPHY(pi))
  return;

 if ((pi->nphy_perical == PHY_PERICAL_DISABLE) ||
     (pi->nphy_perical == PHY_PERICAL_MANUAL))
  return;

 switch (reason) {
 case 133:
  break;

 case 131:
  if (pi->nphy_perical == PHY_PERICAL_MPHASE) {
   if (PHY_PERICAL_MPHASE_PENDING(pi))
    wlc_phy_cal_perical_mphase_reset(pi);

   wlc_phy_cal_perical_mphase_schedule(
    pi,
    PHY_PERICAL_INIT_DELAY);
  }
  break;

 case 132:
 case 130:
 case 129:
  if ((pi->nphy_perical == PHY_PERICAL_MPHASE) &&
      PHY_PERICAL_MPHASE_PENDING(pi))
   wlc_phy_cal_perical_mphase_reset(pi);

  pi->first_cal_after_assoc = 1;

  pi->cal_type_override = PHY_PERICAL_FULL;

  if (pi->phycal_tempdelta)
   pi->nphy_lastcal_temp = wlc_phy_tempsense_nphy(pi);

  wlc_phy_cal_perical_nphy_run(pi, PHY_PERICAL_FULL);
  break;

 case 128:
  if (pi->phycal_tempdelta) {
   nphy_currtemp = wlc_phy_tempsense_nphy(pi);
   delta_temp =
    (nphy_currtemp > pi->nphy_lastcal_temp) ?
    nphy_currtemp - pi->nphy_lastcal_temp :
    pi->nphy_lastcal_temp - nphy_currtemp;

   if ((delta_temp < (s16) pi->phycal_tempdelta) &&
       (pi->nphy_txiqlocal_chanspec ==
        pi->radio_chanspec))
    do_periodic_cal = 0;
   else
    pi->nphy_lastcal_temp = nphy_currtemp;
  }

  if (do_periodic_cal) {
   if (pi->nphy_perical == PHY_PERICAL_MPHASE) {
    if (!PHY_PERICAL_MPHASE_PENDING(pi))
     wlc_phy_cal_perical_mphase_schedule(
      pi,
      PHY_PERICAL_WDOG_DELAY);
   } else if (pi->nphy_perical == PHY_PERICAL_SPHASE)
    wlc_phy_cal_perical_nphy_run(pi,
            PHY_PERICAL_AUTO);
  }
  break;
 default:
  break;
 }
}
