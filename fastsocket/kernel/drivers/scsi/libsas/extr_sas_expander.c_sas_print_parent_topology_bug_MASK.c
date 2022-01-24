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
struct ex_phy {int /*<<< orphan*/  phy_id; } ;
struct domain_device {size_t dev_type; int /*<<< orphan*/  sas_addr; struct domain_device* parent; } ;

/* Variables and functions */
#define  EDGE_DEV 129 
#define  FANOUT_DEV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*,struct ex_phy*) ; 

__attribute__((used)) static void FUNC3(struct domain_device *child,
						 struct ex_phy *parent_phy,
						 struct ex_phy *child_phy)
{
	static const char *ex_type[] = {
		[EDGE_DEV] = "edge",
		[FANOUT_DEV] = "fanout",
	};
	struct domain_device *parent = child->parent;

	FUNC1("%s ex %016llx phy 0x%x <--> %s ex %016llx "
		   "phy 0x%x has %c:%c routing link!\n",

		   ex_type[parent->dev_type],
		   FUNC0(parent->sas_addr),
		   parent_phy->phy_id,

		   ex_type[child->dev_type],
		   FUNC0(child->sas_addr),
		   child_phy->phy_id,

		   FUNC2(parent, parent_phy),
		   FUNC2(child, child_phy));
}