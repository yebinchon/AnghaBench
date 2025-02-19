
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int port_state; } ;
struct port {scalar_t__ sm_mux_state; int sm_vars; int actor_oper_port_state; int ntt; int sm_mux_timer_counter; int actor_port_number; TYPE_2__* aggregator; TYPE_1__ partner_oper; } ;
typedef scalar_t__ mux_states_t ;
struct TYPE_5__ {int is_active; } ;






 int AD_PORT_BEGIN ;
 int AD_PORT_READY ;
 int AD_PORT_READY_N ;
 int AD_PORT_SELECTED ;
 int AD_PORT_STANDBY ;
 int AD_STATE_COLLECTING ;
 int AD_STATE_DISTRIBUTING ;
 int AD_STATE_SYNCHRONIZATION ;
 int AD_WAIT_WHILE_TIMER ;
 int __ad_timer_to_ticks (int ,int ) ;
 int __agg_ports_are_ready (TYPE_2__*) ;
 int __attach_bond_to_agg (struct port*) ;
 int __check_agg_selection_timer (struct port*) ;
 int __detach_bond_from_agg (struct port*) ;
 int __enable_port (struct port*) ;
 int __port_is_enabled (struct port*) ;
 int __set_agg_ports_ready (TYPE_2__*,int ) ;
 int ad_disable_collecting_distributing (struct port*) ;
 int ad_enable_collecting_distributing (struct port*) ;
 int pr_debug (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ad_mux_machine(struct port *port)
{
 mux_states_t last_state;


 last_state = port->sm_mux_state;

 if (port->sm_vars & AD_PORT_BEGIN) {
  port->sm_mux_state = 129;
 } else {
  switch (port->sm_mux_state) {
  case 129:
   if ((port->sm_vars & AD_PORT_SELECTED) || (port->sm_vars & AD_PORT_STANDBY)) {
    port->sm_mux_state = 128;
   }
   break;
  case 128:

   if (!(port->sm_vars & AD_PORT_SELECTED)) {
    port->sm_vars &= ~AD_PORT_READY_N;


    __set_agg_ports_ready(port->aggregator, __agg_ports_are_ready(port->aggregator));
    port->sm_mux_state = 129;
    break;
   }


   if (port->sm_mux_timer_counter && !(--port->sm_mux_timer_counter)) {
    port->sm_vars |= AD_PORT_READY_N;
   }



   __set_agg_ports_ready(port->aggregator, __agg_ports_are_ready(port->aggregator));


   if ((port->sm_vars & AD_PORT_READY) && !port->sm_mux_timer_counter) {
    port->sm_mux_state = 131;
   }
   break;
  case 131:

   if ((port->sm_vars & AD_PORT_SELECTED) && (port->partner_oper.port_state & AD_STATE_SYNCHRONIZATION) && !__check_agg_selection_timer(port)) {
    port->sm_mux_state = 130;
   } else if (!(port->sm_vars & AD_PORT_SELECTED) || (port->sm_vars & AD_PORT_STANDBY)) {
    port->sm_vars &= ~AD_PORT_READY_N;


    __set_agg_ports_ready(port->aggregator, __agg_ports_are_ready(port->aggregator));
    port->sm_mux_state = 129;
   }
   break;
  case 130:
   if (!(port->sm_vars & AD_PORT_SELECTED) || (port->sm_vars & AD_PORT_STANDBY) ||
       !(port->partner_oper.port_state & AD_STATE_SYNCHRONIZATION)
      ) {
    port->sm_mux_state = 131;

   } else {



    if (port->aggregator &&
        port->aggregator->is_active &&
        !__port_is_enabled(port)) {

     __enable_port(port);
    }
   }
   break;
  default:
   break;
  }
 }


 if (port->sm_mux_state != last_state) {
  pr_debug("Mux Machine: Port=%d, Last State=%d, Curr State=%d\n", port->actor_port_number, last_state, port->sm_mux_state);
  switch (port->sm_mux_state) {
  case 129:
   __detach_bond_from_agg(port);
   port->actor_oper_port_state &= ~AD_STATE_SYNCHRONIZATION;
   ad_disable_collecting_distributing(port);
   port->actor_oper_port_state &= ~AD_STATE_COLLECTING;
   port->actor_oper_port_state &= ~AD_STATE_DISTRIBUTING;
   port->ntt = 1;
   break;
  case 128:
   port->sm_mux_timer_counter = __ad_timer_to_ticks(AD_WAIT_WHILE_TIMER, 0);
   break;
  case 131:
   __attach_bond_to_agg(port);
   port->actor_oper_port_state |= AD_STATE_SYNCHRONIZATION;
   port->actor_oper_port_state &= ~AD_STATE_COLLECTING;
   port->actor_oper_port_state &= ~AD_STATE_DISTRIBUTING;
   ad_disable_collecting_distributing(port);
   port->ntt = 1;
   break;
  case 130:
   port->actor_oper_port_state |= AD_STATE_COLLECTING;
   port->actor_oper_port_state |= AD_STATE_DISTRIBUTING;
   ad_enable_collecting_distributing(port);
   port->ntt = 1;
   break;
  default:
   break;
  }
 }
}
