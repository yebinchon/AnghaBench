
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {int xmit; int uart_port; } ;
struct tty_struct {struct uart_state* driver_data; } ;


 int __uart_put_char (int ,int *,unsigned char) ;

__attribute__((used)) static int uart_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct uart_state *state = tty->driver_data;

 return __uart_put_char(state->uart_port, &state->xmit, ch);
}
