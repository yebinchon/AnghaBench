
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int falcon_deconfigure_mac_wrapper (struct efx_nic*) ;
 int msleep (int) ;

__attribute__((used)) static void falcon_prepare_flush(struct efx_nic *efx)
{
 falcon_deconfigure_mac_wrapper(efx);




 msleep(10);
}
