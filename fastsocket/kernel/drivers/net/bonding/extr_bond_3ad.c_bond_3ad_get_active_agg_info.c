
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {struct aggregator* aggregator; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {int mac_addr_value; } ;
struct aggregator {TYPE_1__ partner_system; int partner_oper_aggregator_key; int actor_oper_aggregator_key; int num_of_ports; int aggregator_identifier; scalar_t__ is_active; } ;
struct ad_info {int partner_system; int partner_key; int actor_key; int ports; int aggregator_id; } ;


 int ETH_ALEN ;
 struct port* __get_first_port (struct bonding*) ;
 struct port* __get_next_port (struct port*) ;
 int memcpy (int ,int ,int ) ;

int bond_3ad_get_active_agg_info(struct bonding *bond, struct ad_info *ad_info)
{
 struct aggregator *aggregator = ((void*)0);
 struct port *port;

 for (port = __get_first_port(bond); port; port = __get_next_port(port)) {
  if (port->aggregator && port->aggregator->is_active) {
   aggregator = port->aggregator;
   break;
  }
 }

 if (aggregator) {
  ad_info->aggregator_id = aggregator->aggregator_identifier;
  ad_info->ports = aggregator->num_of_ports;
  ad_info->actor_key = aggregator->actor_oper_aggregator_key;
  ad_info->partner_key = aggregator->partner_oper_aggregator_key;
  memcpy(ad_info->partner_system, aggregator->partner_system.mac_addr_value, ETH_ALEN);
  return 0;
 }

 return -1;
}
