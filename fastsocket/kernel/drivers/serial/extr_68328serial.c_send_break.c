
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m68k_serial {size_t line; int port; } ;
struct TYPE_4__ {int w; } ;
struct TYPE_5__ {TYPE_1__ utx; } ;
typedef TYPE_2__ m68328_uart ;


 int UTX_SEND_BREAK ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int msleep_interruptible (unsigned int) ;
 TYPE_2__* uart_addr ;

__attribute__((used)) static void send_break(struct m68k_serial * info, unsigned int duration)
{
 m68328_uart *uart = &uart_addr[info->line];
        unsigned long flags;
        if (!info->port)
                return;
        local_irq_save(flags);





        local_irq_restore(flags);
}
