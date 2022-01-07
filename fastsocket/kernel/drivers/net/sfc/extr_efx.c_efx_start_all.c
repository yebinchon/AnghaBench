
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {scalar_t__ state; TYPE_2__* type; int mac_lock; TYPE_1__* phy_op; int monitor_work; int workqueue; int net_dev; scalar_t__ port_enabled; } ;
struct TYPE_4__ {int (* start_stats ) (struct efx_nic*) ;int * monitor; } ;
struct TYPE_3__ {scalar_t__ (* poll ) (struct efx_nic*) ;} ;


 int BUG_ON (int) ;
 int EFX_ASSERT_RESET_SERIALISED (struct efx_nic*) ;
 scalar_t__ EFX_REV_SIENA_A0 ;
 scalar_t__ STATE_DISABLED ;
 int efx_link_status_changed (struct efx_nic*) ;
 int efx_monitor_interval ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_start_datapath (struct efx_nic*) ;
 int efx_start_port (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_running (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static void efx_start_all(struct efx_nic *efx)
{
 EFX_ASSERT_RESET_SERIALISED(efx);
 BUG_ON(efx->state == STATE_DISABLED);



 if (efx->port_enabled || !netif_running(efx->net_dev))
  return;

 efx_start_port(efx);
 efx_start_datapath(efx);


 if (efx->type->monitor != ((void*)0))
  queue_delayed_work(efx->workqueue, &efx->monitor_work,
       efx_monitor_interval);




 if (efx_nic_rev(efx) >= EFX_REV_SIENA_A0) {
  mutex_lock(&efx->mac_lock);
  if (efx->phy_op->poll(efx))
   efx_link_status_changed(efx);
  mutex_unlock(&efx->mac_lock);
 }

 efx->type->start_stats(efx);
}
