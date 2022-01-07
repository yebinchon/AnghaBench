
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_params {int port_state; int port_number; int port_priority; int key; int system; int system_priority; } ;
struct lacpdu {int partner_state; void* partner_port; void* partner_port_priority; void* partner_key; int partner_system; void* partner_system_priority; int actor_state; void* actor_port; void* actor_port_priority; void* actor_key; int actor_system; void* actor_system_priority; } ;
struct port {int actor_oper_port_state; int actor_port_number; int actor_port_priority; int actor_oper_port_key; int actor_system; int actor_system_priority; struct port_params partner_oper; struct lacpdu lacpdu; } ;


 void* htons (int ) ;

__attribute__((used)) static inline void __update_lacpdu_from_port(struct port *port)
{
 struct lacpdu *lacpdu = &port->lacpdu;
 const struct port_params *partner = &port->partner_oper;
 lacpdu->actor_system_priority = htons(port->actor_system_priority);
 lacpdu->actor_system = port->actor_system;
 lacpdu->actor_key = htons(port->actor_oper_port_key);
 lacpdu->actor_port_priority = htons(port->actor_port_priority);
 lacpdu->actor_port = htons(port->actor_port_number);
 lacpdu->actor_state = port->actor_oper_port_state;






 lacpdu->partner_system_priority = htons(partner->system_priority);
 lacpdu->partner_system = partner->system;
 lacpdu->partner_key = htons(partner->key);
 lacpdu->partner_port_priority = htons(partner->port_priority);
 lacpdu->partner_port = htons(partner->port_number);
 lacpdu->partner_state = partner->port_state;
}
