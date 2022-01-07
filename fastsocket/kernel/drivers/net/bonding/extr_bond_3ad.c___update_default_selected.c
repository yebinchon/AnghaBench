
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_params {scalar_t__ port_number; scalar_t__ port_priority; scalar_t__ system_priority; scalar_t__ key; int port_state; int system; } ;
struct port {int sm_vars; struct port_params partner_oper; struct port_params partner_admin; } ;


 int AD_PORT_SELECTED ;
 int AD_STATE_AGGREGATION ;
 scalar_t__ MAC_ADDRESS_COMPARE (int *,int *) ;

__attribute__((used)) static void __update_default_selected(struct port *port)
{
 if (port) {
  const struct port_params *admin = &port->partner_admin;
  const struct port_params *oper = &port->partner_oper;


  if (admin->port_number != oper->port_number
      || admin->port_priority != oper->port_priority
      || MAC_ADDRESS_COMPARE(&admin->system, &oper->system)
      || admin->system_priority != oper->system_priority
      || admin->key != oper->key
      || (admin->port_state & AD_STATE_AGGREGATION)
   != (oper->port_state & AD_STATE_AGGREGATION)) {

   port->sm_vars &= ~AD_PORT_SELECTED;
  }
 }
}
