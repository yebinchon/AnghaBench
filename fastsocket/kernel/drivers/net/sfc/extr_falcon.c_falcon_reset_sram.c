
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;
typedef int efx_oword_t ;


 int EFX_OWORD_FIELD (int ,int ) ;
 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int ETIMEDOUT ;
 int FRF_AB_GPIO1_OEN ;
 int FRF_AB_GPIO1_OUT ;
 int FRF_AZ_SRM_INIT_EN ;
 int FRF_AZ_SRM_NB_SZ ;
 int FR_AB_GPIO_CTL ;
 int FR_AZ_SRM_CFG ;
 int HZ ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,...) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int falcon_reset_sram(struct efx_nic *efx)
{
 efx_oword_t srm_cfg_reg_ker, gpio_cfg_reg_ker;
 int count;


 efx_reado(efx, &gpio_cfg_reg_ker, FR_AB_GPIO_CTL);
 EFX_SET_OWORD_FIELD(gpio_cfg_reg_ker, FRF_AB_GPIO1_OEN, 1);
 EFX_SET_OWORD_FIELD(gpio_cfg_reg_ker, FRF_AB_GPIO1_OUT, 1);
 efx_writeo(efx, &gpio_cfg_reg_ker, FR_AB_GPIO_CTL);


 EFX_POPULATE_OWORD_2(srm_cfg_reg_ker,
        FRF_AZ_SRM_INIT_EN, 1,
        FRF_AZ_SRM_NB_SZ, 0);
 efx_writeo(efx, &srm_cfg_reg_ker, FR_AZ_SRM_CFG);


 count = 0;
 do {
  netif_dbg(efx, hw, efx->net_dev,
     "waiting for SRAM reset (attempt %d)...\n", count);


  schedule_timeout_uninterruptible(HZ / 50);


  efx_reado(efx, &srm_cfg_reg_ker, FR_AZ_SRM_CFG);
  if (!EFX_OWORD_FIELD(srm_cfg_reg_ker, FRF_AZ_SRM_INIT_EN)) {
   netif_dbg(efx, hw, efx->net_dev,
      "SRAM reset complete\n");

   return 0;
  }
 } while (++count < 20);

 netif_err(efx, hw, efx->net_dev, "timed out waiting for SRAM reset\n");
 return -ETIMEDOUT;
}
