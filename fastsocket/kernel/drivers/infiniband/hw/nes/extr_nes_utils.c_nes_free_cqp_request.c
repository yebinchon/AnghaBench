
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct nes_device {TYPE_2__ cqp; int cqp_avail_reqs; } ;
struct TYPE_3__ {int * wqe_words; } ;
struct nes_cqp_request {int list; scalar_t__ dynamic; TYPE_1__ cqp_wqe; } ;


 size_t NES_CQP_WQE_OPCODE_IDX ;
 int NES_DBG_CQP ;
 int kfree (struct nes_cqp_request*) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int nes_debug (int ,char*,struct nes_cqp_request*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void nes_free_cqp_request(struct nes_device *nesdev,
     struct nes_cqp_request *cqp_request)
{
 unsigned long flags;

 nes_debug(NES_DBG_CQP, "CQP request %p (opcode 0x%02X) freed.\n",
    cqp_request,
    le32_to_cpu(cqp_request->cqp_wqe.wqe_words[NES_CQP_WQE_OPCODE_IDX]) & 0x3f);

 if (cqp_request->dynamic) {
  kfree(cqp_request);
 } else {
  spin_lock_irqsave(&nesdev->cqp.lock, flags);
  list_add_tail(&cqp_request->list, &nesdev->cqp_avail_reqs);
  spin_unlock_irqrestore(&nesdev->cqp.lock, flags);
 }
}
