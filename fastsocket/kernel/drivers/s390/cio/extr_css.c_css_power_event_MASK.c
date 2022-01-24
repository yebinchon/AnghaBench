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
struct channel_subsystem {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cm_enabled; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
#define  PM_HIBERNATION_PREPARE 131 
#define  PM_POST_HIBERNATION 130 
#define  PM_POST_SUSPEND 129 
#define  PM_SUSPEND_PREPARE 128 
 int __MAX_CSSID ; 
 int /*<<< orphan*/  FUNC0 (struct channel_subsystem*,int,void*) ; 
 struct channel_subsystem** channel_subsystems ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this, unsigned long event,
			   void *ptr)
{
	void *secm_area;
	int ret, i;

	switch (event) {
	case PM_HIBERNATION_PREPARE:
	case PM_SUSPEND_PREPARE:
		ret = NOTIFY_DONE;
		for (i = 0; i <= __MAX_CSSID; i++) {
			struct channel_subsystem *css;

			css = channel_subsystems[i];
			FUNC4(&css->mutex);
			if (!css->cm_enabled) {
				FUNC5(&css->mutex);
				continue;
			}
			secm_area = (void *)FUNC3(GFP_KERNEL |
							    GFP_DMA);
			if (secm_area) {
				if (FUNC0(css, 0, secm_area))
					ret = NOTIFY_BAD;
				FUNC2((unsigned long)secm_area);
			} else
				ret = NOTIFY_BAD;

			FUNC5(&css->mutex);
		}
		break;
	case PM_POST_HIBERNATION:
	case PM_POST_SUSPEND:
		ret = NOTIFY_DONE;
		for (i = 0; i <= __MAX_CSSID; i++) {
			struct channel_subsystem *css;

			css = channel_subsystems[i];
			FUNC4(&css->mutex);
			if (!css->cm_enabled) {
				FUNC5(&css->mutex);
				continue;
			}
			secm_area = (void *)FUNC3(GFP_KERNEL |
							    GFP_DMA);
			if (secm_area) {
				if (FUNC0(css, 1, secm_area))
					ret = NOTIFY_BAD;
				FUNC2((unsigned long)secm_area);
			} else
				ret = NOTIFY_BAD;

			FUNC5(&css->mutex);
		}
		/* search for subchannels, which appeared during hibernation */
		FUNC1();
		break;
	default:
		ret = NOTIFY_DONE;
	}
	return ret;

}