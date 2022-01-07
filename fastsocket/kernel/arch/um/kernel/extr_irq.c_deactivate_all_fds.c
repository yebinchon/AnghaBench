
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fd {int fd; struct irq_fd* next; } ;


 struct irq_fd* active_fds ;
 int os_clear_fd_async (int ) ;
 int os_set_ioignore () ;

int deactivate_all_fds(void)
{
 struct irq_fd *irq;
 int err;

 for (irq = active_fds; irq != ((void*)0); irq = irq->next) {
  err = os_clear_fd_async(irq->fd);
  if (err)
   return err;
 }

 os_set_ioignore();

 return 0;
}
