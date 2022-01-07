
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xterm_wait {int new_fd; int ready; int pid; int fd; } ;
typedef int irqreturn_t ;


 int EAGAIN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int os_rcv_fd (int ,int *) ;

__attribute__((used)) static irqreturn_t xterm_interrupt(int irq, void *data)
{
 struct xterm_wait *xterm = data;
 int fd;

 fd = os_rcv_fd(xterm->fd, &xterm->pid);
 if (fd == -EAGAIN)
  return IRQ_NONE;

 xterm->new_fd = fd;
 complete(&xterm->ready);

 return IRQ_HANDLED;
}
