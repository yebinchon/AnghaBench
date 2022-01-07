
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbcs_soft {TYPE_1__* algo_sn_irq; TYPE_1__* put_sn_irq; TYPE_1__* get_sn_irq; } ;
struct cx_dev {struct mbcs_soft* soft; } ;
struct TYPE_2__ {int irq_irq; } ;


 int free_irq (int ,struct mbcs_soft*) ;
 int tiocx_irq_free (TYPE_1__*) ;

__attribute__((used)) static void mbcs_intr_dealloc(struct cx_dev *dev)
{
 struct mbcs_soft *soft;

 soft = dev->soft;

 free_irq(soft->get_sn_irq->irq_irq, soft);
 tiocx_irq_free(soft->get_sn_irq);
 free_irq(soft->put_sn_irq->irq_irq, soft);
 tiocx_irq_free(soft->put_sn_irq);
 free_irq(soft->algo_sn_irq->irq_irq, soft);
 tiocx_irq_free(soft->algo_sn_irq);
}
