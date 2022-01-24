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
struct notifier_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ model; } ;

/* Variables and functions */
 scalar_t__ DISPLAY_MODEL_LCD ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
#define  SYS_HALT 130 
#define  SYS_POWER_OFF 129 
#define  SYS_RESTART 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ lcd_info ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  led_task ; 
 int /*<<< orphan*/ * led_wq ; 
 int notifier_disabled ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb, unsigned long event, void *buf) 
{
	char *txt;

	if (notifier_disabled)
		return NOTIFY_OK;

	notifier_disabled = 1;
	switch (event) {
	case SYS_RESTART:	txt = "SYSTEM RESTART";
				break;
	case SYS_HALT:		txt = "SYSTEM HALT";
				break;
	case SYS_POWER_OFF:	txt = "SYSTEM POWER OFF";
				break;
	default:		return NOTIFY_DONE;
	}
	
	/* Cancel the work item and delete the queue */
	if (led_wq) {
		FUNC0(&led_task);
		FUNC1(led_wq);
		led_wq = NULL;
	}
 
	if (lcd_info.model == DISPLAY_MODEL_LCD)
		FUNC2(txt);
	else
		if (&led_func_ptr)
			FUNC3(0xff); /* turn all LEDs ON */
	
	return NOTIFY_OK;
}