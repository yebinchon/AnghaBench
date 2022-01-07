
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t qp_id; int sq_pbase; int * sq_vbase; int q2_pbase; int * q2_vbase; } ;
struct nes_qp {int qp_mem_size; int allocated_buffer; TYPE_1__ hwqp; int * pbl_vbase; int pbl_pbase; } ;
struct nes_device {int pcidev; struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {struct nes_qp* cqp_callback_pointer; } ;
struct nes_adapter {int ** qp_table; int allocated_qps; int pbl_lock; int free_256pbl; } ;


 size_t NES_FIRST_QPN ;
 int atomic_inc (int *) ;
 int kfree (int ) ;
 int nes_free_resource (struct nes_adapter*,int ,size_t) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int qps_destroyed ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nes_cqp_rem_ref_callback(struct nes_device *nesdev, struct nes_cqp_request *cqp_request)
{
 unsigned long flags;
 struct nes_qp *nesqp = cqp_request->cqp_callback_pointer;
 struct nes_adapter *nesadapter = nesdev->nesadapter;

 atomic_inc(&qps_destroyed);



 if (nesqp->pbl_vbase) {
  pci_free_consistent(nesdev->pcidev, nesqp->qp_mem_size,
    nesqp->hwqp.q2_vbase, nesqp->hwqp.q2_pbase);
  spin_lock_irqsave(&nesadapter->pbl_lock, flags);
  nesadapter->free_256pbl++;
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
  pci_free_consistent(nesdev->pcidev, 256, nesqp->pbl_vbase, nesqp->pbl_pbase);
  nesqp->pbl_vbase = ((void*)0);

 } else {
  pci_free_consistent(nesdev->pcidev, nesqp->qp_mem_size,
    nesqp->hwqp.sq_vbase, nesqp->hwqp.sq_pbase);
 }
 nes_free_resource(nesadapter, nesadapter->allocated_qps, nesqp->hwqp.qp_id);

 nesadapter->qp_table[nesqp->hwqp.qp_id-NES_FIRST_QPN] = ((void*)0);
 kfree(nesqp->allocated_buffer);

}
