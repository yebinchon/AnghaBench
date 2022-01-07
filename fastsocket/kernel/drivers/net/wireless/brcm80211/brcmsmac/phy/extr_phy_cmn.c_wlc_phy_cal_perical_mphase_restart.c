
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {scalar_t__ mphase_txcal_cmdidx; int mphase_cal_phase_id; } ;


 int MPHASE_CAL_STATE_INIT ;

void wlc_phy_cal_perical_mphase_restart(struct brcms_phy *pi)
{
 pi->mphase_cal_phase_id = MPHASE_CAL_STATE_INIT;
 pi->mphase_txcal_cmdidx = 0;
}
