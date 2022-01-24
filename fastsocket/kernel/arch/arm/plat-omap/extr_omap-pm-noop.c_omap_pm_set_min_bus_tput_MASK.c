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
typedef  scalar_t__ u8 ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ OCP_INITIATOR_AGENT ; 
 scalar_t__ OCP_TARGET_AGENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 

void FUNC3(struct device *dev, u8 agent_id, unsigned long r)
{
	if (!dev || (agent_id != OCP_INITIATOR_AGENT &&
	    agent_id != OCP_TARGET_AGENT)) {
		FUNC0(1);
		return;
	};

	if (r == 0)
		FUNC2("OMAP PM: remove min bus tput constraint: "
			 "dev %s for agent_id %d\n", FUNC1(dev), agent_id);
	else
		FUNC2("OMAP PM: add min bus tput constraint: "
			 "dev %s for agent_id %d: rate %ld KiB\n",
			 FUNC1(dev), agent_id, r);

	/*
	 * This code should model the interconnect and compute the
	 * required clock frequency, convert that to a VDD2 OPP ID, then
	 * set the VDD2 OPP appropriately.
	 *
	 * TI CDP code can call constraint_set here on the VDD2 OPP.
	 */
}