
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct serial_state {int dummy; } ;
struct TYPE_5__ {int * buf; } ;
struct async_struct {int flags; int MCR; TYPE_3__* tty; scalar_t__ IER; TYPE_1__ xmit; int delta_msr_wait; int line; struct serial_state* state; } ;
struct TYPE_8__ {int intena; int adkcon; } ;
struct TYPE_7__ {int flags; TYPE_2__* termios; } ;
struct TYPE_6__ {int c_cflag; } ;


 int AC_UARTBRK ;
 int ASYNC_INITIALIZED ;
 int HUPCL ;
 int IF_RBF ;
 int IF_TBE ;
 int IRQ_AMIGA_VERTB ;
 int * IRQ_ports ;
 int SER_DTR ;
 int SER_RTS ;
 int TTY_IO_ERROR ;
 TYPE_4__ custom ;
 int free_irq (int ,struct async_struct*) ;
 int free_page (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int printk (char*,int ) ;
 int rtsdtr_ctrl (int) ;
 int set_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void shutdown(struct async_struct * info)
{
 unsigned long flags;
 struct serial_state *state;

 if (!(info->flags & ASYNC_INITIALIZED))
  return;

 state = info->state;





 local_irq_save(flags);





 wake_up_interruptible(&info->delta_msr_wait);

 IRQ_ports = ((void*)0);




 free_irq(IRQ_AMIGA_VERTB, info);

 if (info->xmit.buf) {
  free_page((unsigned long) info->xmit.buf);
  info->xmit.buf = ((void*)0);
 }

 info->IER = 0;
 custom.intena = IF_RBF | IF_TBE;
 mb();


 custom.adkcon = AC_UARTBRK;
 mb();

 if (!info->tty || (info->tty->termios->c_cflag & HUPCL))
  info->MCR &= ~(SER_DTR|SER_RTS);
 rtsdtr_ctrl(info->MCR);

 if (info->tty)
  set_bit(TTY_IO_ERROR, &info->tty->flags);

 info->flags &= ~ASYNC_INITIALIZED;
 local_irq_restore(flags);
}
