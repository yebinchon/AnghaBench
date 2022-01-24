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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  MEM_CANCEL_OFFLINE 133 
#define  MEM_CANCEL_ONLINE 132 
#define  MEM_GOING_OFFLINE 131 
#define  MEM_GOING_ONLINE 130 
#define  MEM_OFFLINE 129 
#define  MEM_ONLINE 128 
 int NOTIFY_BAD ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int) ; 
 int /*<<< orphan*/  shca_list ; 
 int /*<<< orphan*/  shca_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
			     unsigned long action, void *data)
{
	static unsigned long ehca_dmem_warn_time;
	unsigned long flags;

	switch (action) {
	case MEM_CANCEL_OFFLINE:
	case MEM_CANCEL_ONLINE:
	case MEM_ONLINE:
	case MEM_OFFLINE:
		return NOTIFY_OK;
	case MEM_GOING_ONLINE:
	case MEM_GOING_OFFLINE:
		/* only ok if no hca is attached to the lpar */
		FUNC3(&shca_list_lock, flags);
		if (FUNC1(&shca_list)) {
			FUNC4(&shca_list_lock, flags);
			return NOTIFY_OK;
		} else {
			FUNC4(&shca_list_lock, flags);
			if (FUNC2(&ehca_dmem_warn_time,
						   30 * 1000))
				FUNC0("DMEM operations are not allowed"
					     "in conjunction with eHCA");
			return NOTIFY_BAD;
		}
	}
	return NOTIFY_OK;
}