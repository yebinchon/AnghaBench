
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tty; } ;
struct uart_state {TYPE_1__ port; } ;


 int tty_wakeup (int ) ;

__attribute__((used)) static void uart_tasklet_action(unsigned long data)
{
 struct uart_state *state = (struct uart_state *)data;
 tty_wakeup(state->port.tty);
}
