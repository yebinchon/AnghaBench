
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ loopback_mode; } ;
typedef int efx_oword_t ;


 int EFX_OWORD_FIELD (int ,int ) ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 scalar_t__ EFX_WORKAROUND_5147 (struct efx_nic*) ;
 int FFE_AB_XX_FORCE_SIG_ALL_LANES ;
 int FRF_AB_XX_FORCE_SIG ;
 int FRF_AB_XX_LPBKA ;
 int FRF_AB_XX_LPBKB ;
 int FRF_AB_XX_LPBKC ;
 int FRF_AB_XX_LPBKD ;
 int FRF_AB_XX_XGMII_LB_EN ;
 int FRF_AB_XX_XGXS_LB_EN ;
 int FR_AB_XX_CORE_STAT ;
 int FR_AB_XX_SD_CTL ;
 scalar_t__ LOOPBACK_XAUI ;
 scalar_t__ LOOPBACK_XGMII ;
 scalar_t__ LOOPBACK_XGXS ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int falcon_reset_xaui (struct efx_nic*) ;

__attribute__((used)) static void falcon_reconfigure_xgxs_core(struct efx_nic *efx)
{
 efx_oword_t reg;
 bool xgxs_loopback = (efx->loopback_mode == LOOPBACK_XGXS);
 bool xaui_loopback = (efx->loopback_mode == LOOPBACK_XAUI);
 bool xgmii_loopback = (efx->loopback_mode == LOOPBACK_XGMII);



 if (EFX_WORKAROUND_5147(efx)) {
  bool old_xgmii_loopback, old_xgxs_loopback, old_xaui_loopback;
  bool reset_xgxs;

  efx_reado(efx, &reg, FR_AB_XX_CORE_STAT);
  old_xgxs_loopback = EFX_OWORD_FIELD(reg, FRF_AB_XX_XGXS_LB_EN);
  old_xgmii_loopback =
   EFX_OWORD_FIELD(reg, FRF_AB_XX_XGMII_LB_EN);

  efx_reado(efx, &reg, FR_AB_XX_SD_CTL);
  old_xaui_loopback = EFX_OWORD_FIELD(reg, FRF_AB_XX_LPBKA);


  reset_xgxs = ((xgxs_loopback != old_xgxs_loopback) ||
         (xaui_loopback != old_xaui_loopback) ||
         (xgmii_loopback != old_xgmii_loopback));

  if (reset_xgxs)
   falcon_reset_xaui(efx);
 }

 efx_reado(efx, &reg, FR_AB_XX_CORE_STAT);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_FORCE_SIG,
       (xgxs_loopback || xaui_loopback) ?
       FFE_AB_XX_FORCE_SIG_ALL_LANES : 0);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_XGXS_LB_EN, xgxs_loopback);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_XGMII_LB_EN, xgmii_loopback);
 efx_writeo(efx, &reg, FR_AB_XX_CORE_STAT);

 efx_reado(efx, &reg, FR_AB_XX_SD_CTL);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_LPBKD, xaui_loopback);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_LPBKC, xaui_loopback);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_LPBKB, xaui_loopback);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_XX_LPBKA, xaui_loopback);
 efx_writeo(efx, &reg, FR_AB_XX_SD_CTL);
}
