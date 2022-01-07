
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int sm_vars; struct port* next_port_in_aggregator; } ;
struct aggregator {struct port* lag_ports; } ;


 int AD_PORT_READY ;

__attribute__((used)) static void __set_agg_ports_ready(struct aggregator *aggregator, int val)
{
 struct port *port;

 for (port=aggregator->lag_ports; port; port=port->next_port_in_aggregator) {
  if (val) {
   port->sm_vars |= AD_PORT_READY;
  } else {
   port->sm_vars &= ~AD_PORT_READY;
  }
 }
}
