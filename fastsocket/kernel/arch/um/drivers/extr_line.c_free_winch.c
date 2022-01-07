
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winch {int pid; int fd; scalar_t__ stack; int list; } ;


 int WINCH_IRQ ;
 int free_irq (int ,struct winch*) ;
 int free_stack (scalar_t__,int ) ;
 int kfree (struct winch*) ;
 int list_del (int *) ;
 int os_close_file (int) ;
 int os_kill_process (int,int) ;

__attribute__((used)) static void free_winch(struct winch *winch, int free_irq_ok)
{
 list_del(&winch->list);

 if (winch->pid != -1)
  os_kill_process(winch->pid, 1);
 if (winch->fd != -1)
  os_close_file(winch->fd);
 if (winch->stack != 0)
  free_stack(winch->stack, 0);
 if (free_irq_ok)
  free_irq(WINCH_IRQ, winch);
 kfree(winch);
}
