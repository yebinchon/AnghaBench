
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {unsigned int index; int rx_filter_id; int tx_filter_id; int txq_lock; int status_lock; int flush_waitq; int reset_work; int req; int tx_filter_mode; struct efx_nic* efx; } ;
struct efx_nic {int vf_count; struct efx_vf* vf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int VF_TX_FILTER_AUTO ;
 int efx_sriov_reset_vf_work ;
 int efx_sriov_vfdi ;
 int init_waitqueue_head (int *) ;
 struct efx_vf* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int efx_sriov_vf_alloc(struct efx_nic *efx)
{
 unsigned index;
 struct efx_vf *vf;

 efx->vf = kzalloc(sizeof(struct efx_vf) * efx->vf_count, GFP_KERNEL);
 if (!efx->vf)
  return -ENOMEM;

 for (index = 0; index < efx->vf_count; ++index) {
  vf = efx->vf + index;

  vf->efx = efx;
  vf->index = index;
  vf->rx_filter_id = -1;
  vf->tx_filter_mode = VF_TX_FILTER_AUTO;
  vf->tx_filter_id = -1;
  INIT_WORK(&vf->req, efx_sriov_vfdi);
  INIT_WORK(&vf->reset_work, efx_sriov_reset_vf_work);
  init_waitqueue_head(&vf->flush_waitq);
  mutex_init(&vf->status_lock);
  mutex_init(&vf->txq_lock);
 }

 return 0;
}
