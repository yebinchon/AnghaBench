
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ql_adapter {int intr_count; TYPE_2__* ndev; TYPE_1__* rx_ring; int flags; struct intr_context* intr_context; } ;
struct intr_context {int intr; int intr_en_mask; int intr_dis_mask; int intr_read_mask; int name; void* handler; struct ql_adapter* qdev; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int irq; } ;


 int INTR_EN_IHD ;
 int INTR_EN_IHD_MASK ;
 int INTR_EN_INTR_MASK ;
 int INTR_EN_TYPE_DISABLE ;
 int INTR_EN_TYPE_ENABLE ;
 int INTR_EN_TYPE_MASK ;
 int INTR_EN_TYPE_READ ;
 int QL_MSIX_ENABLED ;
 scalar_t__ likely (int ) ;
 int ql_set_irq_mask (struct ql_adapter*,struct intr_context*) ;
 int ql_set_tx_vect (struct ql_adapter*) ;
 void* qlge_isr ;
 void* qlge_msix_rx_isr ;
 int sprintf (int ,char*,char*,...) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_resolve_queues_to_irqs(struct ql_adapter *qdev)
{
 int i = 0;
 struct intr_context *intr_context = &qdev->intr_context[0];

 if (likely(test_bit(QL_MSIX_ENABLED, &qdev->flags))) {




  for (i = 0; i < qdev->intr_count; i++, intr_context++) {
   qdev->rx_ring[i].irq = i;
   intr_context->intr = i;
   intr_context->qdev = qdev;



   ql_set_irq_mask(qdev, intr_context);




   intr_context->intr_en_mask =
       INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK |
       INTR_EN_TYPE_ENABLE | INTR_EN_IHD_MASK | INTR_EN_IHD
       | i;
   intr_context->intr_dis_mask =
       INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK |
       INTR_EN_TYPE_DISABLE | INTR_EN_IHD_MASK |
       INTR_EN_IHD | i;
   intr_context->intr_read_mask =
       INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK |
       INTR_EN_TYPE_READ | INTR_EN_IHD_MASK | INTR_EN_IHD |
       i;
   if (i == 0) {





    intr_context->handler = qlge_isr;
    sprintf(intr_context->name, "%s-rx-%d",
     qdev->ndev->name, i);
   } else {



    intr_context->handler = qlge_msix_rx_isr;
    sprintf(intr_context->name, "%s-rx-%d",
     qdev->ndev->name, i);
   }
  }
 } else {




  intr_context->intr = 0;
  intr_context->qdev = qdev;




  intr_context->intr_en_mask =
      INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK | INTR_EN_TYPE_ENABLE;
  intr_context->intr_dis_mask =
      INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK |
      INTR_EN_TYPE_DISABLE;
  intr_context->intr_read_mask =
      INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK | INTR_EN_TYPE_READ;



  intr_context->handler = qlge_isr;
  sprintf(intr_context->name, "%s-single_irq", qdev->ndev->name);





  ql_set_irq_mask(qdev, intr_context);
 }



 ql_set_tx_vect(qdev);
}
