
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tty; } ;
struct m68k_serial {size_t line; int flags; TYPE_2__ port; scalar_t__ xmit_buf; } ;
struct TYPE_7__ {scalar_t__ ustcnt; } ;
typedef TYPE_3__ m68328_uart ;
struct TYPE_5__ {int flags; } ;


 int S_INITIALIZED ;
 int TTY_IO_ERROR ;
 int free_page (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_bit (int ,int *) ;
 TYPE_3__* uart_addr ;

__attribute__((used)) static void shutdown(struct m68k_serial * info)
{
 m68328_uart *uart = &uart_addr[info->line];
 unsigned long flags;

 uart->ustcnt = 0;
 if (!(info->flags & S_INITIALIZED))
  return;

 local_irq_save(flags);

 if (info->xmit_buf) {
  free_page((unsigned long) info->xmit_buf);
  info->xmit_buf = 0;
 }

 if (info->port.tty)
  set_bit(TTY_IO_ERROR, &info->port.tty->flags);

 info->flags &= ~S_INITIALIZED;
 local_irq_restore(flags);
}
