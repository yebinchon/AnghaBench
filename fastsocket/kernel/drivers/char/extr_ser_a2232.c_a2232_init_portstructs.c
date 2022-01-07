
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ops; } ;
struct TYPE_3__ {int close_delay; int closing_wait; int * rd; int magic; TYPE_2__ port; } ;
struct a2232_port {int which_a2232; int which_port_on_a2232; TYPE_1__ gs; scalar_t__ cd_status; scalar_t__ throttle_input; scalar_t__ disable_rx; } ;


 int A2232_MAGIC ;
 int HZ ;
 int MAX_A2232_BOARDS ;
 int NUMLINES ;
 int a2232_port_ops ;
 struct a2232_port* a2232_ports ;
 int a2232_real_driver ;
 int tty_port_init (TYPE_2__*) ;

__attribute__((used)) static void a2232_init_portstructs(void)
{
 struct a2232_port *port;
 int i;

 for (i = 0; i < MAX_A2232_BOARDS*NUMLINES; i++) {
  port = a2232_ports + i;
  tty_port_init(&port->gs.port);
  port->gs.port.ops = &a2232_port_ops;
  port->which_a2232 = i/NUMLINES;
  port->which_port_on_a2232 = i%NUMLINES;
  port->disable_rx = port->throttle_input = port->cd_status = 0;
  port->gs.magic = A2232_MAGIC;
  port->gs.close_delay = HZ/2;
  port->gs.closing_wait = 30 * HZ;
  port->gs.rd = &a2232_real_driver;
 }
}
