
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_params {int port_state; void* key; void* system_priority; int system; void* port_priority; void* port_number; } ;
struct port {int sm_vars; int actor_oper_port_state; struct port_params partner_oper; } ;
struct lacpdu {int actor_state; int actor_key; int actor_system_priority; int actor_system; int actor_port_priority; int actor_port; } ;


 int AD_PORT_MATCHED ;
 int AD_STATE_DEFAULTED ;
 int AD_STATE_SYNCHRONIZATION ;
 int __choose_matched (struct lacpdu*,struct port*) ;
 void* ntohs (int ) ;

__attribute__((used)) static void __record_pdu(struct lacpdu *lacpdu, struct port *port)
{
 if (lacpdu && port) {
  struct port_params *partner = &port->partner_oper;

  __choose_matched(lacpdu, port);

  partner->port_number = ntohs(lacpdu->actor_port);
  partner->port_priority = ntohs(lacpdu->actor_port_priority);
  partner->system = lacpdu->actor_system;
  partner->system_priority = ntohs(lacpdu->actor_system_priority);
  partner->key = ntohs(lacpdu->actor_key);
  partner->port_state = lacpdu->actor_state;


  port->actor_oper_port_state &= ~AD_STATE_DEFAULTED;


  if ((port->sm_vars & AD_PORT_MATCHED) && (lacpdu->actor_state & AD_STATE_SYNCHRONIZATION)) {
   partner->port_state |= AD_STATE_SYNCHRONIZATION;
  } else {
   partner->port_state &= ~AD_STATE_SYNCHRONIZATION;
  }
 }
}
