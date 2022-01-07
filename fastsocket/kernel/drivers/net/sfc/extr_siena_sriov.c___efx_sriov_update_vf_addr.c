
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_vf {TYPE_1__* efx; } ;
struct TYPE_2__ {int peer_work; } ;


 int efx_sriov_reset_rx_filter (struct efx_vf*) ;
 int efx_sriov_reset_tx_filter (struct efx_vf*) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

__attribute__((used)) static void __efx_sriov_update_vf_addr(struct efx_vf *vf)
{
 efx_sriov_reset_tx_filter(vf);
 efx_sriov_reset_rx_filter(vf);
 queue_work(vfdi_workqueue, &vf->efx->peer_work);
}
