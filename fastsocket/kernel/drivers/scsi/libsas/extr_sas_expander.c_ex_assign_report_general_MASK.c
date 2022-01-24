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
typedef  int /*<<< orphan*/  u8 ;
struct report_general_resp {int /*<<< orphan*/  enclosure_logical_id; int /*<<< orphan*/  configuring; int /*<<< orphan*/  conf_route_table; int /*<<< orphan*/  t2t_supp; int /*<<< orphan*/  num_phys; int /*<<< orphan*/  route_indexes; int /*<<< orphan*/  change_count; } ;
struct smp_resp {struct report_general_resp rg; } ;
struct TYPE_2__ {int /*<<< orphan*/  enclosure_logical_id; int /*<<< orphan*/  configuring; int /*<<< orphan*/  conf_route_table; int /*<<< orphan*/  t2t_supp; int /*<<< orphan*/  num_phys; void* max_route_indexes; void* ex_change_count; } ;
struct domain_device {TYPE_1__ ex_dev; } ;

/* Variables and functions */
 scalar_t__ MAX_EXPANDER_PHYS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct domain_device *dev,
					    struct smp_resp *resp)
{
	struct report_general_resp *rg = &resp->rg;

	dev->ex_dev.ex_change_count = FUNC0(rg->change_count);
	dev->ex_dev.max_route_indexes = FUNC0(rg->route_indexes);
	dev->ex_dev.num_phys = FUNC2(rg->num_phys, (u8)MAX_EXPANDER_PHYS);
	dev->ex_dev.t2t_supp = rg->t2t_supp;
	dev->ex_dev.conf_route_table = rg->conf_route_table;
	dev->ex_dev.configuring = rg->configuring;
	FUNC1(dev->ex_dev.enclosure_logical_id, rg->enclosure_logical_id, 8);
}