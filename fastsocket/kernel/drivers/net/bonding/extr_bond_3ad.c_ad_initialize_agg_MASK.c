#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct aggregator {int /*<<< orphan*/ * slave; scalar_t__ aggregator_identifier; int /*<<< orphan*/  aggregator_mac_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aggregator*) ; 
 int /*<<< orphan*/  null_mac_addr ; 

__attribute__((used)) static void FUNC1(struct aggregator *aggregator)
{
	if (aggregator) {
		FUNC0(aggregator);

		aggregator->aggregator_mac_address = null_mac_addr;
		aggregator->aggregator_identifier = 0;
		aggregator->slave = NULL;
	}
}