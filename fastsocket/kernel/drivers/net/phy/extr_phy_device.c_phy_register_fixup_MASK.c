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
typedef  void* u32 ;
struct phy_fixup {int (* run ) (struct phy_device*) ;int /*<<< orphan*/  list; void* phy_uid_mask; void* phy_uid; int /*<<< orphan*/  bus_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct phy_fixup* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phy_fixup_list ; 
 int /*<<< orphan*/  phy_fixup_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC5(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
		int (*run)(struct phy_device *))
{
	struct phy_fixup *fixup;

	fixup = FUNC0(sizeof(struct phy_fixup), GFP_KERNEL);
	if (!fixup)
		return -ENOMEM;

	FUNC4(fixup->bus_id, bus_id, sizeof(fixup->bus_id));
	fixup->phy_uid = phy_uid;
	fixup->phy_uid_mask = phy_uid_mask;
	fixup->run = run;

	FUNC2(&phy_fixup_lock);
	FUNC1(&fixup->list, &phy_fixup_list);
	FUNC3(&phy_fixup_lock);

	return 0;
}