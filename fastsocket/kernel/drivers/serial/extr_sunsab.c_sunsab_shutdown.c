
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int irq; int lock; } ;
struct uart_sunsab_port {int interrupt_mask0; int interrupt_mask1; int cached_dafo; int cached_mode; TYPE_4__ port; TYPE_3__* regs; } ;
struct uart_port {int dummy; } ;
struct TYPE_6__ {int ccr0; int mode; int dafo; } ;
struct TYPE_5__ {int imr1; int imr0; } ;
struct TYPE_7__ {TYPE_2__ rw; TYPE_1__ w; } ;


 int SAB82532_CCR0_PU ;
 int SAB82532_DAFO_XBRK ;
 int SAB82532_MODE_RAC ;
 int free_irq (int ,struct uart_sunsab_port*) ;
 void* readb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmp ;
 int writeb (int,int *) ;

__attribute__((used)) static void sunsab_shutdown(struct uart_port *port)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);


 up->interrupt_mask0 = 0xff;
 writeb(up->interrupt_mask0, &up->regs->w.imr0);
 up->interrupt_mask1 = 0xff;
 writeb(up->interrupt_mask1, &up->regs->w.imr1);


 up->cached_dafo = readb(&up->regs->rw.dafo);
 up->cached_dafo &= ~SAB82532_DAFO_XBRK;
 writeb(up->cached_dafo, &up->regs->rw.dafo);


 up->cached_mode &= ~SAB82532_MODE_RAC;
 writeb(up->cached_mode, &up->regs->rw.mode);
 spin_unlock_irqrestore(&up->port.lock, flags);
 free_irq(up->port.irq, up);
}
