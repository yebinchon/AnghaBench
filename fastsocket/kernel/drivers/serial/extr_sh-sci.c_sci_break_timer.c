
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_port {int break_flag; int port; } ;


 scalar_t__ sci_rxd_in (int *) ;
 int sci_schedule_break_timer (struct sci_port*) ;

__attribute__((used)) static void sci_break_timer(unsigned long data)
{
 struct sci_port *port = (struct sci_port *)data;

 if (sci_rxd_in(&port->port) == 0) {
  port->break_flag = 1;
  sci_schedule_break_timer(port);
 } else if (port->break_flag == 1) {

  port->break_flag = 2;
  sci_schedule_break_timer(port);
 } else
  port->break_flag = 0;
}
