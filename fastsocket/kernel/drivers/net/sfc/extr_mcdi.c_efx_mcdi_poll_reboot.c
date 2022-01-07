
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct efx_nic {int mac_stats; } ;
typedef int efx_dword_t ;


 int EFX_DWORD_0 ;
 scalar_t__ EFX_DWORD_FIELD (int ,int ) ;
 scalar_t__ EFX_REV_SIENA_A0 ;
 int EFX_ZERO_DWORD (int ) ;
 int EINTR ;
 int EIO ;
 unsigned int FR_CZ_MC_TREG_SMEM ;
 unsigned int MCDI_STATUS (struct efx_nic*) ;
 scalar_t__ MC_STATUS_DWORD_ASSERT ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_readd (struct efx_nic*,int *,unsigned int) ;
 int efx_writed (struct efx_nic*,int *,unsigned int) ;
 int memset (int *,int ,int) ;

int efx_mcdi_poll_reboot(struct efx_nic *efx)
{
 unsigned int addr = FR_CZ_MC_TREG_SMEM + MCDI_STATUS(efx);
 efx_dword_t reg;
 uint32_t value;

 if (efx_nic_rev(efx) < EFX_REV_SIENA_A0)
  return 0;

 efx_readd(efx, &reg, addr);
 value = EFX_DWORD_FIELD(reg, EFX_DWORD_0);

 if (value == 0)
  return 0;




 memset(&efx->mac_stats, 0, sizeof(efx->mac_stats));

 EFX_ZERO_DWORD(reg);
 efx_writed(efx, &reg, addr);

 if (value == MC_STATUS_DWORD_ASSERT)
  return -EINTR;
 else
  return -EIO;
}
