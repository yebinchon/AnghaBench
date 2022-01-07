
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 unsigned int efx_vf_size (struct efx_nic*) ;

__attribute__((used)) static bool bad_vf_index(struct efx_nic *efx, unsigned index)
{
 return index >= efx_vf_size(efx);
}
