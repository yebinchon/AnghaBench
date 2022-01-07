
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int xmit_cnt; } ;


 int SERIAL_XMIT_SIZE ;
 int func_enter () ;
 int func_exit () ;

int gs_write_room(struct tty_struct * tty)
{
 struct gs_port *port = tty->driver_data;
 int ret;

 func_enter ();
 ret = SERIAL_XMIT_SIZE - port->xmit_cnt - 1;
 if (ret < 0)
  ret = 0;
 func_exit ();
 return ret;
}
