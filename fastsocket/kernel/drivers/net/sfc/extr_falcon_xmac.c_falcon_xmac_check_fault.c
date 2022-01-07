
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int falcon_xmac_link_ok_retry (struct efx_nic*,int) ;

bool falcon_xmac_check_fault(struct efx_nic *efx)
{
 return !falcon_xmac_link_ok_retry(efx, 5);
}
