
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfdi_status {TYPE_2__* peers; } ;
struct TYPE_4__ {struct vfdi_status* addr; } ;
struct efx_nic {int peer_work; TYPE_3__* net_dev; int vf_init_count; TYPE_1__ vfdi_status; } ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_5__ {int mac_addr; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

void efx_sriov_mac_address_changed(struct efx_nic *efx)
{
 struct vfdi_status *vfdi_status = efx->vfdi_status.addr;

 if (!efx->vf_init_count)
  return;
 memcpy(vfdi_status->peers[0].mac_addr,
        efx->net_dev->dev_addr, ETH_ALEN);
 queue_work(vfdi_workqueue, &efx->peer_work);
}
