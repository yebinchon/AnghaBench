#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ex_phy {int /*<<< orphan*/  phy_id; } ;
struct domain_device {int /*<<< orphan*/  sas_addr; TYPE_2__* port; struct domain_device* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  eeds_b; int /*<<< orphan*/  eeds_a; int /*<<< orphan*/  fanout_sas_addr; } ;
struct TYPE_4__ {TYPE_1__ disc; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct domain_device *child,
				 struct ex_phy *parent_phy,
				 struct ex_phy *child_phy)
{
	int res = 0;
	struct domain_device *parent = child->parent;

	if (FUNC0(parent->port->disc.fanout_sas_addr) != 0) {
		res = -ENODEV;
		FUNC1("edge ex %016llx phy S:0x%x <--> edge ex %016llx "
			    "phy S:0x%x, while there is a fanout ex %016llx\n",
			    FUNC0(parent->sas_addr),
			    parent_phy->phy_id,
			    FUNC0(child->sas_addr),
			    child_phy->phy_id,
			    FUNC0(parent->port->disc.fanout_sas_addr));
	} else if (FUNC0(parent->port->disc.eeds_a) == 0) {
		FUNC2(parent->port->disc.eeds_a, parent->sas_addr,
		       SAS_ADDR_SIZE);
		FUNC2(parent->port->disc.eeds_b, child->sas_addr,
		       SAS_ADDR_SIZE);
	} else if (((FUNC0(parent->port->disc.eeds_a) ==
		    FUNC0(parent->sas_addr)) ||
		   (FUNC0(parent->port->disc.eeds_a) ==
		    FUNC0(child->sas_addr)))
		   &&
		   ((FUNC0(parent->port->disc.eeds_b) ==
		     FUNC0(parent->sas_addr)) ||
		    (FUNC0(parent->port->disc.eeds_b) ==
		     FUNC0(child->sas_addr))))
		;
	else {
		res = -ENODEV;
		FUNC1("edge ex %016llx phy 0x%x <--> edge ex %016llx "
			    "phy 0x%x link forms a third EEDS!\n",
			    FUNC0(parent->sas_addr),
			    parent_phy->phy_id,
			    FUNC0(child->sas_addr),
			    child_phy->phy_id);
	}

	return res;
}