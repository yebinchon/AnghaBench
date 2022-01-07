
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int sm_vars; struct port* next_port_in_aggregator; } ;
struct aggregator {struct port* lag_ports; } ;


 int AD_PORT_READY_N ;

__attribute__((used)) static int __agg_ports_are_ready(struct aggregator *aggregator)
{
 struct port *port;
 int retval = 1;

 if (aggregator) {

  for (port=aggregator->lag_ports; port; port=port->next_port_in_aggregator) {
   if (!(port->sm_vars & AD_PORT_READY_N)) {
    retval = 0;
    break;
   }
  }
 }

 return retval;
}
