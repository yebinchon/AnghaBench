
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tty; int flags; } ;
struct TYPE_8__ {TYPE_3__ port; } ;
struct sx_port {TYPE_4__ gs; } ;
struct TYPE_6__ {TYPE_1__* termios; } ;
struct TYPE_5__ {int c_cflag; } ;


 int GS_ACTIVE ;
 int HUPCL ;
 int func_enter () ;
 int func_exit () ;
 int sx_reconfigure_port (struct sx_port*) ;
 int sx_setsignals (struct sx_port*,int ,int ) ;

__attribute__((used)) static void sx_shutdown_port(void *ptr)
{
 struct sx_port *port = ptr;

 func_enter();

 port->gs.port.flags &= ~GS_ACTIVE;
 if (port->gs.port.tty && (port->gs.port.tty->termios->c_cflag & HUPCL)) {
  sx_setsignals(port, 0, 0);
  sx_reconfigure_port(port);
 }

 func_exit();
}
