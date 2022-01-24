#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct crisv32_watch_entry {int dummy; } ;
struct TYPE_6__ {void* bp3; void* bp2; void* bp0; } ;
typedef  TYPE_1__ reg_marb_rw_intr_mask ;
struct TYPE_7__ {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int EINVAL ; 
 int NUMBER_OF_BP ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  arbiter_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  marb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  regi_marb ; 
 void* regk_marb_no ; 
 int /*<<< orphan*/  rw_intr_mask ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* watches ; 

int FUNC6(int id)
{
	reg_marb_rw_intr_mask intr_mask = FUNC0(marb, regi_marb, rw_intr_mask);

	FUNC2();

	FUNC4(&arbiter_lock);

	if ((id < 0) || (id >= NUMBER_OF_BP) || (!watches[id].used)) {
		FUNC5(&arbiter_lock);
		return -EINVAL;
	}

	FUNC3(&watches[id], 0, sizeof(struct crisv32_watch_entry));

	if (id == 0)
		intr_mask.bp0 = regk_marb_no;
	else if (id == 1)
		intr_mask.bp2 = regk_marb_no;
	else if (id == 2)
		intr_mask.bp2 = regk_marb_no;
	else if (id == 3)
		intr_mask.bp3 = regk_marb_no;

	FUNC1(marb, regi_marb, rw_intr_mask, intr_mask);

	FUNC5(&arbiter_lock);
	return 0;
}