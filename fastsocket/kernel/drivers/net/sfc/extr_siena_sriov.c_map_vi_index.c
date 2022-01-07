
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int dummy; } ;
struct efx_nic {unsigned int vf_init_count; struct efx_vf* vf; } ;


 unsigned int EFX_VI_BASE ;
 unsigned int efx_vf_size (struct efx_nic*) ;

__attribute__((used)) static bool map_vi_index(struct efx_nic *efx, unsigned abs_index,
    struct efx_vf **vf_out, unsigned *rel_index_out)
{
 unsigned vf_i;

 if (abs_index < EFX_VI_BASE)
  return 1;
 vf_i = (abs_index - EFX_VI_BASE) / efx_vf_size(efx);
 if (vf_i >= efx->vf_init_count)
  return 1;

 if (vf_out)
  *vf_out = efx->vf + vf_i;
 if (rel_index_out)
  *rel_index_out = abs_index % efx_vf_size(efx);
 return 0;
}
