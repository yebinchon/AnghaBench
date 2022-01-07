
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int FR_CZ_BUF_FULL_TBL_ROWS ;
 int efx_nic_dimension_resources (struct efx_nic*,int) ;

__attribute__((used)) static void siena_dimension_resources(struct efx_nic *efx)
{




 efx_nic_dimension_resources(efx, FR_CZ_BUF_FULL_TBL_ROWS / 2);
}
