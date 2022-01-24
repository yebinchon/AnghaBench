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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct memory_block {unsigned long state; int start_phys_index; int end_phys_index; int /*<<< orphan*/  state_mutex; TYPE_1__ sysdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KOBJ_OFFLINE ; 
 int /*<<< orphan*/  KOBJ_ONLINE ; 
 unsigned long MEM_GOING_OFFLINE ; 
#define  MEM_OFFLINE 129 
#define  MEM_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct memory_block *mem,
		unsigned long to_state, unsigned long from_state_req)
{
	int i, ret = 0;
	FUNC2(&mem->state_mutex);

	if (mem->state != from_state_req) {
		ret = -EINVAL;
		goto out;
	}

	if (to_state == MEM_OFFLINE)
		mem->state = MEM_GOING_OFFLINE;

	for (i = mem->start_phys_index; i <= mem->end_phys_index; i++) {
		ret = FUNC1(i, to_state);
		if (ret)
			break;
	}

	if (ret) {
		for (i = mem->start_phys_index; i <= mem->end_phys_index; i++)
			FUNC1(i, from_state_req);

		mem->state = from_state_req;
		goto out;
	}

	mem->state = to_state;
	switch (mem->state) {
	case MEM_OFFLINE:
		FUNC0(&mem->sysdev.kobj, KOBJ_OFFLINE);
		break;
	case MEM_ONLINE:
		FUNC0(&mem->sysdev.kobj, KOBJ_ONLINE);
		break;
	default:
		break;
	}
out:
	FUNC3(&mem->state_mutex);
	return ret;
}