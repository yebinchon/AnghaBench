
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int flush_waitq; int txq_count; int txq_mask; } ;
struct efx_nic {int dummy; } ;
typedef int efx_qword_t ;


 unsigned int EFX_QWORD_FIELD (int ,int ) ;
 int FSF_AZ_DRIVER_EV_SUBDATA ;
 int __clear_bit (unsigned int,int ) ;
 scalar_t__ efx_vfdi_flush_wake (struct efx_vf*) ;
 scalar_t__ map_vi_index (struct efx_nic*,unsigned int,struct efx_vf**,unsigned int*) ;
 int test_bit (unsigned int,int ) ;
 int wake_up (int *) ;

void efx_sriov_tx_flush_done(struct efx_nic *efx, efx_qword_t *event)
{
 struct efx_vf *vf;
 unsigned queue, qid;

 queue = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBDATA);
 if (map_vi_index(efx, queue, &vf, &qid))
  return;

 if (!test_bit(qid, vf->txq_mask))
  return;

 __clear_bit(qid, vf->txq_mask);
 --vf->txq_count;

 if (efx_vfdi_flush_wake(vf))
  wake_up(&vf->flush_waitq);
}
