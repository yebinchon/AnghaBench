
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EFX_OWORD_FIELD (int ,int ) ;
 int FRF_AB_GPIO3_IN ;
 int FR_AB_GPIO_CTL ;
 int efx_reado (struct efx_nic*,int *,int ) ;

__attribute__((used)) static int falcon_getsda(void *data)
{
 struct efx_nic *efx = (struct efx_nic *)data;
 efx_oword_t reg;

 efx_reado(efx, &reg, FR_AB_GPIO_CTL);
 return EFX_OWORD_FIELD(reg, FRF_AB_GPIO3_IN);
}
