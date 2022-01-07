
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_vf {int rx_filtering; TYPE_1__* efx; } ;
struct TYPE_2__ {int peer_work; } ;


 int VFDI_RC_SUCCESS ;
 int efx_sriov_reset_rx_filter (struct efx_vf*) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

__attribute__((used)) static int efx_vfdi_remove_all_filters(struct efx_vf *vf)
{
 vf->rx_filtering = 0;
 efx_sriov_reset_rx_filter(vf);
 queue_work(vfdi_workqueue, &vf->efx->peer_work);

 return VFDI_RC_SUCCESS;
}
