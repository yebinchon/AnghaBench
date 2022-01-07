
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggregator {int is_individual; int aggregator_identifier; scalar_t__ num_of_ports; scalar_t__ is_active; int * lag_ports; scalar_t__ transmit_state; scalar_t__ receive_state; scalar_t__ partner_oper_aggregator_key; scalar_t__ partner_system_priority; int partner_system; scalar_t__ actor_oper_aggregator_key; scalar_t__ actor_admin_aggregator_key; } ;


 int null_mac_addr ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void ad_clear_agg(struct aggregator *aggregator)
{
 if (aggregator) {
  aggregator->is_individual = 0;
  aggregator->actor_admin_aggregator_key = 0;
  aggregator->actor_oper_aggregator_key = 0;
  aggregator->partner_system = null_mac_addr;
  aggregator->partner_system_priority = 0;
  aggregator->partner_oper_aggregator_key = 0;
  aggregator->receive_state = 0;
  aggregator->transmit_state = 0;
  aggregator->lag_ports = ((void*)0);
  aggregator->is_active = 0;
  aggregator->num_of_ports = 0;
  pr_debug("LAG %d was cleared\n", aggregator->aggregator_identifier);
 }
}
