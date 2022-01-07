
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_struct {int irq_wait; int irqc; scalar_t__ irqresponse; int irqctl; TYPE_1__* pdev; } ;
struct TYPE_2__ {int port; } ;


 int atomic_inc (int *) ;
 int parport_write_control (int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void pp_irq (void *private)
{
 struct pp_struct *pp = private;

 if (pp->irqresponse) {
  parport_write_control (pp->pdev->port, pp->irqctl);
  pp->irqresponse = 0;
 }

 atomic_inc (&pp->irqc);
 wake_up_interruptible (&pp->irq_wait);
}
