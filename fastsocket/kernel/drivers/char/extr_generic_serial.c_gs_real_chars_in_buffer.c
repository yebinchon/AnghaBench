
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int xmit_cnt; TYPE_1__* rd; } ;
struct TYPE_2__ {int (* chars_in_buffer ) (struct gs_port*) ;} ;


 int func_enter () ;
 int func_exit () ;
 int stub1 (struct gs_port*) ;

__attribute__((used)) static int gs_real_chars_in_buffer(struct tty_struct *tty)
{
 struct gs_port *port;
 func_enter ();

 port = tty->driver_data;

 if (!port->rd) return 0;
 if (!port->rd->chars_in_buffer) return 0;

 func_exit ();
 return port->xmit_cnt + port->rd->chars_in_buffer (port);
}
