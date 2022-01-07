
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_sunsab_port {TYPE_2__* regs; int interrupt_mask1; } ;
struct uart_port {int dummy; } ;
struct TYPE_3__ {int imr1; } ;
struct TYPE_4__ {TYPE_1__ w; } ;


 int SAB82532_IMR1_XPR ;
 int writeb (int ,int *) ;

__attribute__((used)) static void sunsab_stop_tx(struct uart_port *port)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;

 up->interrupt_mask1 |= SAB82532_IMR1_XPR;
 writeb(up->interrupt_mask1, &up->regs->w.imr1);
}
