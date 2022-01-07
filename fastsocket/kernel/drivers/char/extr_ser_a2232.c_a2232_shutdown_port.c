
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct a2232status {int Command; int OutFlush; int Setup; } ;
struct TYPE_7__ {TYPE_2__* tty; int flags; } ;
struct TYPE_8__ {TYPE_3__ port; } ;
struct a2232_port {TYPE_4__ gs; int which_port_on_a2232; int which_a2232; } ;
struct TYPE_6__ {TYPE_1__* termios; } ;
struct TYPE_5__ {int c_cflag; } ;


 int A2232CMD_CMask ;
 int A2232CMD_Close ;
 int GS_ACTIVE ;
 int HUPCL ;
 struct a2232status* a2232stat (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void a2232_shutdown_port(void *ptr)
{
 struct a2232_port *port;
 volatile struct a2232status *stat;
 unsigned long flags;

 port = ptr;
 stat = a2232stat(port->which_a2232, port->which_port_on_a2232);

 local_irq_save(flags);

 port->gs.port.flags &= ~GS_ACTIVE;

 if (port->gs.port.tty && port->gs.port.tty->termios->c_cflag & HUPCL) {


  stat->Command = ( (stat->Command & ~A2232CMD_CMask) |
     A2232CMD_Close );
  stat->OutFlush = -1;
  stat->Setup = -1;
 }

 local_irq_restore(flags);
}
