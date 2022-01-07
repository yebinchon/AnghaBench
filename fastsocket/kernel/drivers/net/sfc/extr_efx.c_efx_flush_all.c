
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int mac_work; int monitor_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int efx_selftest_async_cancel (struct efx_nic*) ;

__attribute__((used)) static void efx_flush_all(struct efx_nic *efx)
{

 cancel_delayed_work_sync(&efx->monitor_work);
 efx_selftest_async_cancel(efx);

 cancel_work_sync(&efx->mac_work);
}
