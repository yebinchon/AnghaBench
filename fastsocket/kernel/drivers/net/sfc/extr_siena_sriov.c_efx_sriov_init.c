
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfdi_status {int version; int length; scalar_t__ peer_count; TYPE_1__* peers; int timer_quantum_ns; int rss_rxq_count; int vi_scale; int max_tx_channels; } ;
struct net_device {int dev_addr; } ;
struct TYPE_5__ {struct vfdi_status* addr; } ;
struct efx_nic {scalar_t__ vf_count; scalar_t__ vf_init_count; TYPE_2__ vfdi_status; int vf; int peer_work; int pci_dev; int local_page_list; int local_addr_list; int local_lock; int timer_quantum_ns; int rss_spread; int vi_scale; struct net_device* net_dev; } ;
struct TYPE_4__ {int mac_addr; } ;


 int BUILD_BUG_ON (int) ;
 int EFX_MAX_CHANNELS ;
 int EFX_VI_BASE ;
 int EFX_VI_SCALE_MAX ;
 int ETH_ALEN ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int cancel_work_sync (int *) ;
 int efx_nic_alloc_buffer (struct efx_nic*,TYPE_2__*,int) ;
 int efx_nic_free_buffer (struct efx_nic*,TYPE_2__*) ;
 int efx_sriov_cmd (struct efx_nic*,int,int *,int *) ;
 int efx_sriov_free_local (struct efx_nic*) ;
 int efx_sriov_peer_work ;
 int efx_sriov_usrev (struct efx_nic*,int) ;
 int efx_sriov_vf_alloc (struct efx_nic*) ;
 int efx_sriov_vfs_fini (struct efx_nic*) ;
 int efx_sriov_vfs_init (struct efx_nic*) ;
 int efx_vf_size (struct efx_nic*) ;
 int kfree (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct vfdi_status*,int ,int) ;
 int mutex_init (int *) ;
 int netif_info (struct efx_nic*,int ,struct net_device*,char*,scalar_t__,int ) ;
 int pci_enable_sriov (int ,scalar_t__) ;
 int probe ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int vf_max_tx_channels ;

int efx_sriov_init(struct efx_nic *efx)
{
 struct net_device *net_dev = efx->net_dev;
 struct vfdi_status *vfdi_status;
 int rc;


 BUILD_BUG_ON(EFX_MAX_CHANNELS + 1 >= EFX_VI_BASE);

 BUILD_BUG_ON(EFX_VI_BASE & ((1 << EFX_VI_SCALE_MAX) - 1));

 if (efx->vf_count == 0)
  return 0;

 rc = efx_sriov_cmd(efx, 1, ((void*)0), ((void*)0));
 if (rc)
  goto fail_cmd;

 rc = efx_nic_alloc_buffer(efx, &efx->vfdi_status, sizeof(*vfdi_status));
 if (rc)
  goto fail_status;
 vfdi_status = efx->vfdi_status.addr;
 memset(vfdi_status, 0, sizeof(*vfdi_status));
 vfdi_status->version = 1;
 vfdi_status->length = sizeof(*vfdi_status);
 vfdi_status->max_tx_channels = vf_max_tx_channels;
 vfdi_status->vi_scale = efx->vi_scale;
 vfdi_status->rss_rxq_count = efx->rss_spread;
 vfdi_status->peer_count = 1 + efx->vf_count;
 vfdi_status->timer_quantum_ns = efx->timer_quantum_ns;

 rc = efx_sriov_vf_alloc(efx);
 if (rc)
  goto fail_alloc;

 mutex_init(&efx->local_lock);
 INIT_WORK(&efx->peer_work, efx_sriov_peer_work);
 INIT_LIST_HEAD(&efx->local_addr_list);
 INIT_LIST_HEAD(&efx->local_page_list);

 rc = efx_sriov_vfs_init(efx);
 if (rc)
  goto fail_vfs;

 rtnl_lock();
 memcpy(vfdi_status->peers[0].mac_addr,
        net_dev->dev_addr, ETH_ALEN);
 efx->vf_init_count = efx->vf_count;
 rtnl_unlock();

 efx_sriov_usrev(efx, 1);



 rc = pci_enable_sriov(efx->pci_dev, efx->vf_count);
 if (rc)
  goto fail_pci;

 netif_info(efx, probe, net_dev,
     "enabled SR-IOV for %d VFs, %d VI per VF\n",
     efx->vf_count, efx_vf_size(efx));
 return 0;

fail_pci:
 efx_sriov_usrev(efx, 0);
 rtnl_lock();
 efx->vf_init_count = 0;
 rtnl_unlock();
 efx_sriov_vfs_fini(efx);
fail_vfs:
 cancel_work_sync(&efx->peer_work);
 efx_sriov_free_local(efx);
 kfree(efx->vf);
fail_alloc:
 efx_nic_free_buffer(efx, &efx->vfdi_status);
fail_status:
 efx_sriov_cmd(efx, 0, ((void*)0), ((void*)0));
fail_cmd:
 return rc;
}
