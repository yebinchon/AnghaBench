
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {scalar_t__ host_connected; int guest_connected; } ;


 int port_has_data (struct port*) ;

__attribute__((used)) static bool will_read_block(struct port *port)
{
 if (!port->guest_connected) {

  return 0;
 }
 return !port_has_data(port) && port->host_connected;
}
