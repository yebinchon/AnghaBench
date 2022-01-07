
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q2_pbase; int * q2_vbase; int sq_pbase; int * sq_vbase; } ;
struct nes_qp {int qp_mem_size; int page; scalar_t__ sq_kmapped; int * pbl_vbase; int pbl_pbase; TYPE_1__ hwqp; } ;
struct nes_device {int pcidev; struct nes_adapter* nesadapter; } ;
struct nes_adapter {int pbl_lock; int free_256pbl; } ;


 int kunmap (int ) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void nes_free_qp_mem(struct nes_device *nesdev,
  struct nes_qp *nesqp, int virt_wqs)
{
 unsigned long flags;
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 if (!virt_wqs) {
  pci_free_consistent(nesdev->pcidev, nesqp->qp_mem_size,
    nesqp->hwqp.sq_vbase, nesqp->hwqp.sq_pbase);
 }else {
  spin_lock_irqsave(&nesadapter->pbl_lock, flags);
  nesadapter->free_256pbl++;
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
  pci_free_consistent(nesdev->pcidev, nesqp->qp_mem_size, nesqp->hwqp.q2_vbase, nesqp->hwqp.q2_pbase);
  pci_free_consistent(nesdev->pcidev, 256, nesqp->pbl_vbase, nesqp->pbl_pbase );
  nesqp->pbl_vbase = ((void*)0);
  if (nesqp->sq_kmapped) {
   nesqp->sq_kmapped = 0;
   kunmap(nesqp->page);
  }
 }
}
