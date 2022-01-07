
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_eqe {int id_valid; } ;
struct TYPE_4__ {int id; } ;
struct ocrdma_eq {TYPE_2__ q; struct ocrdma_dev* dev; } ;
struct TYPE_3__ {scalar_t__ intr_mode; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
typedef int irqreturn_t ;
typedef int eqe ;


 scalar_t__ BE_INTERRUPT_MODE_INTX ;
 int IRQ_HANDLED ;
 int OCRDMA_EQE_FOR_CQE_MASK ;
 int OCRDMA_EQE_RESOURCE_ID_SHIFT ;
 int OCRDMA_EQE_VALID_MASK ;
 int ocrdma_cq_handler (struct ocrdma_dev*,int) ;
 int ocrdma_eq_inc_tail (struct ocrdma_eq*) ;
 struct ocrdma_eqe* ocrdma_get_eqe (struct ocrdma_eq*) ;
 int ocrdma_le32_to_cpu (struct ocrdma_eqe*,int) ;
 int ocrdma_ring_eq_db (struct ocrdma_dev*,int ,int,int,int) ;

__attribute__((used)) static irqreturn_t ocrdma_irq_handler(int irq, void *handle)
{
 struct ocrdma_eq *eq = handle;
 struct ocrdma_dev *dev = eq->dev;
 struct ocrdma_eqe eqe;
 struct ocrdma_eqe *ptr;
 u16 eqe_popped = 0;
 u16 cq_id;
 while (1) {
  ptr = ocrdma_get_eqe(eq);
  eqe = *ptr;
  ocrdma_le32_to_cpu(&eqe, sizeof(eqe));
  if ((eqe.id_valid & OCRDMA_EQE_VALID_MASK) == 0)
   break;
  eqe_popped += 1;
  ptr->id_valid = 0;

  if ((eqe.id_valid & OCRDMA_EQE_FOR_CQE_MASK) == 0) {
   cq_id = eqe.id_valid >> OCRDMA_EQE_RESOURCE_ID_SHIFT;
   ocrdma_cq_handler(dev, cq_id);
  }
  ocrdma_eq_inc_tail(eq);
 }
 ocrdma_ring_eq_db(dev, eq->q.id, 1, 1, eqe_popped);

 if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX)
  ocrdma_ring_eq_db(dev, eq->q.id, 1, 1, 0);
 return IRQ_HANDLED;
}
