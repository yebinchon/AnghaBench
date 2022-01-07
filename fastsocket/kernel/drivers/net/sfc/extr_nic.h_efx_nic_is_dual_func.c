
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 scalar_t__ EFX_REV_FALCON_B0 ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;

__attribute__((used)) static inline bool efx_nic_is_dual_func(struct efx_nic *efx)
{
 return efx_nic_rev(efx) < EFX_REV_FALCON_B0;
}
