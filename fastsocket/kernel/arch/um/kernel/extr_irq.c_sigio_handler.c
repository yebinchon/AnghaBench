
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
struct irq_fd {scalar_t__ current_events; int irq; struct irq_fd* next; } ;


 int EINTR ;
 struct irq_fd* active_fds ;
 int do_IRQ (int ,struct uml_pt_regs*) ;
 int free_irqs () ;
 int os_waiting_for_events (struct irq_fd*) ;
 scalar_t__ smp_sigio_handler () ;

void sigio_handler(int sig, struct uml_pt_regs *regs)
{
 struct irq_fd *irq_fd;
 int n;

 if (smp_sigio_handler())
  return;

 while (1) {
  n = os_waiting_for_events(active_fds);
  if (n <= 0) {
   if (n == -EINTR)
    continue;
   else break;
  }

  for (irq_fd = active_fds; irq_fd != ((void*)0);
       irq_fd = irq_fd->next) {
   if (irq_fd->current_events != 0) {
    irq_fd->current_events = 0;
    do_IRQ(irq_fd->irq, regs);
   }
  }
 }

 free_irqs();
}
