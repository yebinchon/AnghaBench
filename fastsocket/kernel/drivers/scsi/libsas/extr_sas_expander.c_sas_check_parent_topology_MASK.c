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
struct expander_device {int num_phys; int /*<<< orphan*/  t2t_supp; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; size_t attached_phy_id; int /*<<< orphan*/  routing_attr; int /*<<< orphan*/  attached_sas_addr; } ;
struct domain_device {int dev_type; TYPE_1__* parent; int /*<<< orphan*/  sas_addr; struct expander_device ex_dev; } ;
struct TYPE_2__ {int dev_type; struct expander_device ex_dev; } ;

/* Variables and functions */
#define  EDGE_DEV 129 
 int ENODEV ; 
#define  FANOUT_DEV 128 
 scalar_t__ PHY_NOT_PRESENT ; 
 scalar_t__ PHY_VACANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBTRACTIVE_ROUTING ; 
 int /*<<< orphan*/  TABLE_ROUTING ; 
 int FUNC1 (struct domain_device*,struct ex_phy*,struct ex_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*,struct ex_phy*,struct ex_phy*) ; 

__attribute__((used)) static int FUNC3(struct domain_device *child)
{
	struct expander_device *child_ex = &child->ex_dev;
	struct expander_device *parent_ex;
	int i;
	int res = 0;

	if (!child->parent)
		return 0;

	if (child->parent->dev_type != EDGE_DEV &&
	    child->parent->dev_type != FANOUT_DEV)
		return 0;

	parent_ex = &child->parent->ex_dev;

	for (i = 0; i < parent_ex->num_phys; i++) {
		struct ex_phy *parent_phy = &parent_ex->ex_phy[i];
		struct ex_phy *child_phy;

		if (parent_phy->phy_state == PHY_VACANT ||
		    parent_phy->phy_state == PHY_NOT_PRESENT)
			continue;

		if (FUNC0(parent_phy->attached_sas_addr) != FUNC0(child->sas_addr))
			continue;

		child_phy = &child_ex->ex_phy[parent_phy->attached_phy_id];

		switch (child->parent->dev_type) {
		case EDGE_DEV:
			if (child->dev_type == FANOUT_DEV) {
				if (parent_phy->routing_attr != SUBTRACTIVE_ROUTING ||
				    child_phy->routing_attr != TABLE_ROUTING) {
					FUNC2(child, parent_phy, child_phy);
					res = -ENODEV;
				}
			} else if (parent_phy->routing_attr == SUBTRACTIVE_ROUTING) {
				if (child_phy->routing_attr == SUBTRACTIVE_ROUTING) {
					res = FUNC1(child, parent_phy, child_phy);
				} else if (child_phy->routing_attr != TABLE_ROUTING) {
					FUNC2(child, parent_phy, child_phy);
					res = -ENODEV;
				}
			} else if (parent_phy->routing_attr == TABLE_ROUTING) {
				if (child_phy->routing_attr == SUBTRACTIVE_ROUTING ||
				    (child_phy->routing_attr == TABLE_ROUTING &&
				     child_ex->t2t_supp && parent_ex->t2t_supp)) {
					/* All good */;
				} else {
					FUNC2(child, parent_phy, child_phy);
					res = -ENODEV;
				}
			}
			break;
		case FANOUT_DEV:
			if (parent_phy->routing_attr != TABLE_ROUTING ||
			    child_phy->routing_attr != SUBTRACTIVE_ROUTING) {
				FUNC2(child, parent_phy, child_phy);
				res = -ENODEV;
			}
			break;
		default:
			break;
		}
	}

	return res;
}