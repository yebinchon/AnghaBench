#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct port {struct aggregator* aggregator; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr_value; } ;
struct aggregator {TYPE_1__ partner_system; int /*<<< orphan*/  partner_oper_aggregator_key; int /*<<< orphan*/  actor_oper_aggregator_key; int /*<<< orphan*/  num_of_ports; int /*<<< orphan*/  aggregator_identifier; scalar_t__ is_active; } ;
struct ad_info {int /*<<< orphan*/  partner_system; int /*<<< orphan*/  partner_key; int /*<<< orphan*/  actor_key; int /*<<< orphan*/  ports; int /*<<< orphan*/  aggregator_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 struct port* FUNC0 (struct bonding*) ; 
 struct port* FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct bonding *bond, struct ad_info *ad_info)
{
	struct aggregator *aggregator = NULL;
	struct port *port;

	for (port = FUNC0(bond); port; port = FUNC1(port)) {
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
		FUNC2(ad_info->partner_system, aggregator->partner_system.mac_addr_value, ETH_ALEN);
		return 0;
	}

	return -1;
}