
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int selftest_work; } ;


 int cancel_delayed_work_sync (int *) ;

void efx_selftest_async_cancel(struct efx_nic *efx)
{
 cancel_delayed_work_sync(&efx->selftest_work);
}
