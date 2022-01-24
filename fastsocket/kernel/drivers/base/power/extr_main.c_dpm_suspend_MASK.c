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
struct list_head {struct list_head* prev; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct device {TYPE_1__ power; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_OFF ; 
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

__attribute__((used)) static int FUNC11(pm_message_t state)
{
	struct list_head list, *entry;
	int error = 0;

	FUNC0(&list);
	FUNC6(&dpm_list_mtx);
	while (!FUNC3(&dpm_list)) {
		struct device *dev = FUNC10(dpm_list.prev);
		entry = dpm_list.prev;

		FUNC2(dev);
		FUNC7(&dpm_list_mtx);

		error = FUNC1(dev, state);

		FUNC6(&dpm_list_mtx);
		if (error) {
			FUNC8(dev, state, "", error);
			FUNC9(dev);
			break;
		}
		dev->power.status = DPM_OFF;
		if (!FUNC3(entry))
			FUNC4(entry, &list);
		FUNC9(dev);
	}
	FUNC5(&list, dpm_list.prev);
	FUNC7(&dpm_list_mtx);
	return error;
}