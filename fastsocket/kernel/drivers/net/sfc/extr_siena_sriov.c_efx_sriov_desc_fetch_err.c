
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int reset_work; int index; } ;
struct efx_nic {int net_dev; } ;


 int hw ;
 scalar_t__ map_vi_index (struct efx_nic*,unsigned int,struct efx_vf**,unsigned int*) ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,unsigned int) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

void efx_sriov_desc_fetch_err(struct efx_nic *efx, unsigned dmaq)
{
 struct efx_vf *vf;
 unsigned int rel;

 if (map_vi_index(efx, dmaq, &vf, &rel))
  return;

 if (net_ratelimit())
  netif_err(efx, hw, efx->net_dev,
     "VF %d DMA Q %d reports descriptor fetch error.\n",
     vf->index, rel);
 queue_work(vfdi_workqueue, &vf->reset_work);
}
