
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fd {int dummy; } ;


 struct irq_fd* find_irq_by_fd (int,int,int*) ;
 int ignore_sigio_fd (int) ;
 int irq_lock ;
 int os_set_pollfd (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void deactivate_fd(int fd, int irqnum)
{
 struct irq_fd *irq;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&irq_lock, flags);
 irq = find_irq_by_fd(fd, irqnum, &i);
 if (irq == ((void*)0)) {
  spin_unlock_irqrestore(&irq_lock, flags);
  return;
 }

 os_set_pollfd(i, -1);
 spin_unlock_irqrestore(&irq_lock, flags);

 ignore_sigio_fd(fd);
}
