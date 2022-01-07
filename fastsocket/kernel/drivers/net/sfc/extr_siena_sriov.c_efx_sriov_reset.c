
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int dummy; } ;
struct efx_nic {unsigned int vf_init_count; struct efx_vf* vf; } ;
struct efx_buffer {int dummy; } ;


 int ASSERT_RTNL () ;
 int EFX_PAGE_SIZE ;
 scalar_t__ efx_nic_alloc_buffer (struct efx_nic*,struct efx_buffer*,int ) ;
 int efx_nic_free_buffer (struct efx_nic*,struct efx_buffer*) ;
 int efx_sriov_cmd (struct efx_nic*,int,int *,int *) ;
 int efx_sriov_reset_vf (struct efx_vf*,struct efx_buffer*) ;
 int efx_sriov_usrev (struct efx_nic*,int) ;

void efx_sriov_reset(struct efx_nic *efx)
{
 unsigned int vf_i;
 struct efx_buffer buf;
 struct efx_vf *vf;

 ASSERT_RTNL();

 if (efx->vf_init_count == 0)
  return;

 efx_sriov_usrev(efx, 1);
 (void)efx_sriov_cmd(efx, 1, ((void*)0), ((void*)0));

 if (efx_nic_alloc_buffer(efx, &buf, EFX_PAGE_SIZE))
  return;

 for (vf_i = 0; vf_i < efx->vf_init_count; ++vf_i) {
  vf = efx->vf + vf_i;
  efx_sriov_reset_vf(vf, &buf);
 }

 efx_nic_free_buffer(efx, &buf);
}
