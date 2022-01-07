
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int xmit_cnt; } ;


 int func_enter () ;
 int func_exit () ;

int gs_chars_in_buffer(struct tty_struct *tty)
{
 struct gs_port *port = tty->driver_data;
 func_enter ();

 func_exit ();
 return port->xmit_cnt;
}
