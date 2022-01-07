
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int queue_irq_state; } ;
struct TYPE_6__ {TYPE_2__ in; } ;
struct qdio_q {TYPE_3__ u; } ;
struct qdio_irq {struct qdio_q** input_qs; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_4__ {struct qdio_irq* qdio_data; } ;


 int ENODEV ;
 int QDIO_QUEUE_IRQS_DISABLED ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int qdio_stop_irq(struct ccw_device *cdev, int nr)
{
 struct qdio_q *q;
 struct qdio_irq *irq_ptr = cdev->private->qdio_data;

 if (!irq_ptr)
  return -ENODEV;
 q = irq_ptr->input_qs[nr];

 if (test_and_set_bit(QDIO_QUEUE_IRQS_DISABLED,
        &q->u.in.queue_irq_state))
  return 0;
 else
  return 1;
}
