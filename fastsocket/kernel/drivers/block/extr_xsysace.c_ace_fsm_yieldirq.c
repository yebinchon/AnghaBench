
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ace_device {scalar_t__ irq; scalar_t__ fsm_continue_flag; int fsm_tasklet; int dev; } ;


 scalar_t__ NO_IRQ ;
 int dev_dbg (int ,char*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline void ace_fsm_yieldirq(struct ace_device *ace)
{
 dev_dbg(ace->dev, "ace_fsm_yieldirq()\n");

 if (ace->irq == NO_IRQ)

  tasklet_schedule(&ace->fsm_tasklet);
 ace->fsm_continue_flag = 0;
}
