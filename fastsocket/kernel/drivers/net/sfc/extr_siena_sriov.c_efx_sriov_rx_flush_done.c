
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int flush_waitq; int rxq_count; int rxq_mask; int rxq_retry_count; int rxq_retry_mask; } ;
struct efx_nic {int dummy; } ;
typedef int efx_qword_t ;


 unsigned int EFX_QWORD_FIELD (int ,int ) ;
 int FSF_AZ_DRIVER_EV_RX_DESCQ_ID ;
 int FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL ;
 int __clear_bit (unsigned int,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ efx_vfdi_flush_wake (struct efx_vf*) ;
 scalar_t__ map_vi_index (struct efx_nic*,unsigned int,struct efx_vf**,unsigned int*) ;
 int set_bit (unsigned int,int ) ;
 int test_bit (unsigned int,int ) ;
 int wake_up (int *) ;

void efx_sriov_rx_flush_done(struct efx_nic *efx, efx_qword_t *event)
{
 struct efx_vf *vf;
 unsigned ev_failed, queue, qid;

 queue = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_RX_DESCQ_ID);
 ev_failed = EFX_QWORD_FIELD(*event,
        FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL);
 if (map_vi_index(efx, queue, &vf, &qid))
  return;
 if (!test_bit(qid, vf->rxq_mask))
  return;

 if (ev_failed) {
  set_bit(qid, vf->rxq_retry_mask);
  atomic_inc(&vf->rxq_retry_count);
 } else {
  __clear_bit(qid, vf->rxq_mask);
  --vf->rxq_count;
 }
 if (efx_vfdi_flush_wake(vf))
  wake_up(&vf->flush_waitq);
}
