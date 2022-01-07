
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int vf_count; int ** extra_channel_type; int vi_scale; } ;


 size_t EFX_EXTRA_CHANNEL_IOV ;
 int efx_sriov_channel_type ;
 scalar_t__ efx_sriov_cmd (struct efx_nic*,int,int *,unsigned int*) ;
 unsigned int max_vfs ;

void efx_sriov_probe(struct efx_nic *efx)
{
 unsigned count;

 if (!max_vfs)
  return;

 if (efx_sriov_cmd(efx, 0, &efx->vi_scale, &count))
  return;
 if (count > 0 && count > max_vfs)
  count = max_vfs;


 efx->vf_count = count;

 efx->extra_channel_type[EFX_EXTRA_CHANNEL_IOV] = &efx_sriov_channel_type;
}
