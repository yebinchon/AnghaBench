
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {scalar_t__ actor_port_number; scalar_t__ actor_port_priority; scalar_t__ actor_system_priority; scalar_t__ actor_oper_port_key; int actor_oper_port_state; int ntt; int actor_system; } ;
struct lacpdu {int partner_state; int partner_key; int partner_system_priority; int partner_system; int partner_port_priority; int partner_port; } ;


 int AD_STATE_AGGREGATION ;
 int AD_STATE_LACP_ACTIVITY ;
 int AD_STATE_LACP_TIMEOUT ;
 int AD_STATE_SYNCHRONIZATION ;
 scalar_t__ MAC_ADDRESS_COMPARE (int *,int *) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void __update_ntt(struct lacpdu *lacpdu, struct port *port)
{

 if (lacpdu && port) {

  if ((ntohs(lacpdu->partner_port) != port->actor_port_number) ||
      (ntohs(lacpdu->partner_port_priority) != port->actor_port_priority) ||
      MAC_ADDRESS_COMPARE(&(lacpdu->partner_system), &(port->actor_system)) ||
      (ntohs(lacpdu->partner_system_priority) != port->actor_system_priority) ||
      (ntohs(lacpdu->partner_key) != port->actor_oper_port_key) ||
      ((lacpdu->partner_state & AD_STATE_LACP_ACTIVITY) != (port->actor_oper_port_state & AD_STATE_LACP_ACTIVITY)) ||
      ((lacpdu->partner_state & AD_STATE_LACP_TIMEOUT) != (port->actor_oper_port_state & AD_STATE_LACP_TIMEOUT)) ||
      ((lacpdu->partner_state & AD_STATE_SYNCHRONIZATION) != (port->actor_oper_port_state & AD_STATE_SYNCHRONIZATION)) ||
      ((lacpdu->partner_state & AD_STATE_AGGREGATION) != (port->actor_oper_port_state & AD_STATE_AGGREGATION))
     ) {

   port->ntt = 1;
  }
 }
}
