
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 scalar_t__ siena_try_update_nic_stats (struct efx_nic*) ;
 int udelay (int) ;

__attribute__((used)) static void siena_update_nic_stats(struct efx_nic *efx)
{
 int retry;



 for (retry = 0; retry < 100; ++retry) {
  if (siena_try_update_nic_stats(efx) == 0)
   return;
  udelay(100);
 }


}
