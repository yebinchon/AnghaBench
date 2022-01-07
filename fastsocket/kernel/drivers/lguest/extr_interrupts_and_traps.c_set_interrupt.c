
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int tsk; int irqs_pending; } ;


 int kick_process (int ) ;
 int set_bit (unsigned int,int ) ;
 int wake_up_process (int ) ;

void set_interrupt(struct lg_cpu *cpu, unsigned int irq)
{




 set_bit(irq, cpu->irqs_pending);





 if (!wake_up_process(cpu->tsk))
  kick_process(cpu->tsk);
}
