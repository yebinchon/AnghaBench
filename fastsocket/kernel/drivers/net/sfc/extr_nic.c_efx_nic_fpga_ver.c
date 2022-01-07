
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EFX_OWORD_FIELD (int ,int ) ;
 int FRF_AZ_ALTERA_BUILD_VER ;
 int FR_AZ_ALTERA_BUILD ;
 int efx_reado (struct efx_nic*,int *,int ) ;

u32 efx_nic_fpga_ver(struct efx_nic *efx)
{
 efx_oword_t altera_build;
 efx_reado(efx, &altera_build, FR_AZ_ALTERA_BUILD);
 return EFX_OWORD_FIELD(altera_build, FRF_AZ_ALTERA_BUILD_VER);
}
