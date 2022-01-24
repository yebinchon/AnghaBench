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
typedef  int /*<<< orphan*/  u8 ;
struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; scalar_t__ attached_dev_type; scalar_t__ routing_attr; int /*<<< orphan*/ * attached_sas_addr; } ;
struct domain_device {scalar_t__ dev_type; int /*<<< orphan*/ * sas_addr; struct expander_device ex_dev; } ;

/* Variables and functions */
 scalar_t__ EDGE_DEV ; 
 scalar_t__ FANOUT_DEV ; 
 scalar_t__ PHY_NOT_PRESENT ; 
 scalar_t__ PHY_VACANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,scalar_t__,scalar_t__) ; 
 scalar_t__ SUBTRACTIVE_ROUTING ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*,int) ; 

__attribute__((used)) static int FUNC3(struct domain_device *dev)
{
	struct expander_device *ex = &dev->ex_dev;
	int i;
	u8  *sub_sas_addr = NULL;

	if (dev->dev_type != EDGE_DEV)
		return 0;

	for (i = 0; i < ex->num_phys; i++) {
		struct ex_phy *phy = &ex->ex_phy[i];

		if (phy->phy_state == PHY_VACANT ||
		    phy->phy_state == PHY_NOT_PRESENT)
			continue;

		if ((phy->attached_dev_type == FANOUT_DEV ||
		     phy->attached_dev_type == EDGE_DEV) &&
		    phy->routing_attr == SUBTRACTIVE_ROUTING) {

			if (!sub_sas_addr)
				sub_sas_addr = &phy->attached_sas_addr[0];
			else if (FUNC0(sub_sas_addr) !=
				 FUNC0(phy->attached_sas_addr)) {

				FUNC1("ex %016llx phy 0x%x "
					    "diverges(%016llx) on subtractive "
					    "boundary(%016llx). Disabled\n",
					    FUNC0(dev->sas_addr), i,
					    FUNC0(phy->attached_sas_addr),
					    FUNC0(sub_sas_addr));
				FUNC2(dev, i);
			}
		}
	}
	return 0;
}