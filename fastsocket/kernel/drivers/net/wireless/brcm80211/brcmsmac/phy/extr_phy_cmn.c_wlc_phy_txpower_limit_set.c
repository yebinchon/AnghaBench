
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct txpwr_limits {scalar_t__* ofdm; scalar_t__* mcs_20_siso; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; scalar_t__* txpwr_limit; } ;
struct TYPE_2__ {int physhim; } ;


 int BRCMS_NUM_RATES_MCS_1_STREAM ;
 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 int TXP_FIRST_OFDM_20_CDD ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_phy_cal_txpower_recalc_sw (struct brcms_phy*) ;
 int wlc_phy_txpower_recalc_target (struct brcms_phy*) ;
 int wlc_phy_txpower_reg_limit_calc (struct brcms_phy*,struct txpwr_limits*,int ) ;

void
wlc_phy_txpower_limit_set(struct brcms_phy_pub *ppi, struct txpwr_limits *txpwr,
     u16 chanspec)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 wlc_phy_txpower_reg_limit_calc(pi, txpwr, chanspec);

 if (ISLCNPHY(pi)) {
  int i, j;
  for (i = TXP_FIRST_OFDM_20_CDD, j = 0;
       j < BRCMS_NUM_RATES_MCS_1_STREAM; i++, j++) {
   if (txpwr->mcs_20_siso[j])
    pi->txpwr_limit[i] = txpwr->mcs_20_siso[j];
   else
    pi->txpwr_limit[i] = txpwr->ofdm[j];
  }
 }

 wlapi_suspend_mac_and_wait(pi->sh->physhim);

 wlc_phy_txpower_recalc_target(pi);
 wlc_phy_cal_txpower_recalc_sw(pi);
 wlapi_enable_mac(pi->sh->physhim);
}
