
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int FRF_AB_GPIO0_OEN ;
 int FR_AB_GPIO_CTL ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void falcon_setscl(void *data, int state)
{
 struct efx_nic *efx = (struct efx_nic *)data;
 efx_oword_t reg;

 efx_reado(efx, &reg, FR_AB_GPIO_CTL);
 EFX_SET_OWORD_FIELD(reg, FRF_AB_GPIO0_OEN, !state);
 efx_writeo(efx, &reg, FR_AB_GPIO_CTL);
}
