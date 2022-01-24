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
struct list_head {struct list_head* next; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct device {TYPE_1__ power; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 scalar_t__ DPM_OFF ; 
 void* DPM_RESUMING ; 
 scalar_t__ DPM_SUSPENDING ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct list_head dpm_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 struct device* FUNC10 (struct list_head*) ; 

__attribute__((used)) static void FUNC11(pm_message_t state)
{
	struct list_head list;
	struct list_head *entry;

	FUNC0(&list);
	FUNC6(&dpm_list_mtx);
	while (!FUNC3(&dpm_list)) {
		struct device *dev = FUNC10(dpm_list.next);
		entry = dpm_list.next;

		FUNC2(dev);
		if (dev->power.status >= DPM_OFF) {
			int error;

			dev->power.status = DPM_RESUMING;
			FUNC7(&dpm_list_mtx);

			error = FUNC1(dev, state);

			FUNC6(&dpm_list_mtx);
			if (error)
				FUNC8(dev, state, "", error);
		} else if (dev->power.status == DPM_SUSPENDING) {
			/* Allow new children of the device to be registered */
			dev->power.status = DPM_RESUMING;
		}
		if (!FUNC3(entry))
			FUNC4(entry, &list);
		FUNC9(dev);
	}
	FUNC5(&list, &dpm_list);
	FUNC7(&dpm_list_mtx);
}