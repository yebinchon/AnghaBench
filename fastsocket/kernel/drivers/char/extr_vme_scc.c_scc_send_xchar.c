
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct scc_port* driver_data; } ;
struct scc_port {char x_char; } ;


 int scc_enable_tx_interrupts (struct scc_port*) ;

__attribute__((used)) static void scc_send_xchar(struct tty_struct *tty, char ch)
{
 struct scc_port *port = tty->driver_data;

 port->x_char = ch;
 if (ch)
  scc_enable_tx_interrupts(port);
}
