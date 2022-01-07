
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t phy_corenum; int phy_rev; } ;
struct brcms_phy {size_t nphy_noise_index; scalar_t__** nphy_noise_win; TYPE_1__ pubpi; } ;
typedef scalar_t__ s8 ;
typedef int cmplx_pwr_dbm ;


 size_t MODINC_POW2 (size_t,int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 int PHY_CORE_MAX ;
 scalar_t__ PHY_NOISE_OFFSETFACT_4322 ;
 int PHY_NOISE_WINDOW_SZ ;
 int memset (size_t*,int ,int) ;
 int wlc_phy_compute_dB (int *,scalar_t__*,size_t) ;

__attribute__((used)) static bool
wlc_phy_noise_calc_phy(struct brcms_phy *pi, u32 *cmplx_pwr, s8 *pwr_ant)
{
 s8 cmplx_pwr_dbm[PHY_CORE_MAX];
 u8 i;

 memset((u8 *) cmplx_pwr_dbm, 0, sizeof(cmplx_pwr_dbm));
 wlc_phy_compute_dB(cmplx_pwr, cmplx_pwr_dbm, pi->pubpi.phy_corenum);

 for (i = 0; i < pi->pubpi.phy_corenum; i++) {
  if (NREV_GE(pi->pubpi.phy_rev, 3))
   cmplx_pwr_dbm[i] += (s8) PHY_NOISE_OFFSETFACT_4322;
  else

   cmplx_pwr_dbm[i] += (s8) (16 - (15) * 3 - 70);
 }

 for (i = 0; i < pi->pubpi.phy_corenum; i++) {
  pi->nphy_noise_win[i][pi->nphy_noise_index] = cmplx_pwr_dbm[i];
  pwr_ant[i] = cmplx_pwr_dbm[i];
 }
 pi->nphy_noise_index =
  MODINC_POW2(pi->nphy_noise_index, PHY_NOISE_WINDOW_SZ);
 return 1;
}
