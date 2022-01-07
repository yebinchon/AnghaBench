
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct ixgbevf_q_vector {int napi; TYPE_2__ tx; TYPE_1__ rx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ixgbevf_msix_clean_rings(int irq, void *data)
{
 struct ixgbevf_q_vector *q_vector = data;


 if (q_vector->rx.ring || q_vector->tx.ring)
  napi_schedule(&q_vector->napi);

 return IRQ_HANDLED;
}
