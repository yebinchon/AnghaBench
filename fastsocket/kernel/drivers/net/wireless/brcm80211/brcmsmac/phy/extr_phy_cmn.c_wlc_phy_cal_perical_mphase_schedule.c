
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcms_phy {scalar_t__ nphy_perical; int phycal_timer; int mphase_cal_phase_id; } ;


 int MPHASE_CAL_STATE_INIT ;
 scalar_t__ PHY_PERICAL_MANUAL ;
 scalar_t__ PHY_PERICAL_MPHASE ;
 int wlapi_add_timer (int ,int ,int ) ;
 int wlapi_del_timer (int ) ;

__attribute__((used)) static void
wlc_phy_cal_perical_mphase_schedule(struct brcms_phy *pi, uint delay)
{

 if ((pi->nphy_perical != PHY_PERICAL_MPHASE) &&
     (pi->nphy_perical != PHY_PERICAL_MANUAL))
  return;

 wlapi_del_timer(pi->phycal_timer);

 pi->mphase_cal_phase_id = MPHASE_CAL_STATE_INIT;
 wlapi_add_timer(pi->phycal_timer, delay, 0);
}
