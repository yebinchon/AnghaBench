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
typedef  scalar_t__ suspend_state_t ;
struct TYPE_2__ {int save_count; int /*<<< orphan*/  (* restore ) (scalar_t__*) ;int /*<<< orphan*/  (* enter ) (scalar_t__) ;int /*<<< orphan*/  (* save ) (scalar_t__*) ;} ;

/* Variables and functions */
 int HWCAP_IWMMXT ; 
 scalar_t__ PM_SUSPEND_STANDBY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int elf_hwcap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* pxa_cpu_pm_fns ; 
 scalar_t__* sleep_save ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

int FUNC8(suspend_state_t state)
{
	unsigned long sleep_save_checksum = 0, checksum = 0;
	int i;

#ifdef CONFIG_IWMMXT
	/* force any iWMMXt context to ram **/
	if (elf_hwcap & HWCAP_IWMMXT)
		iwmmxt_task_disable(NULL);
#endif

	/* skip registers saving for standby */
	if (state != PM_SUSPEND_STANDBY) {
		pxa_cpu_pm_fns->save(sleep_save);
		/* before sleeping, calculate and save a checksum */
		for (i = 0; i < pxa_cpu_pm_fns->save_count - 1; i++)
			sleep_save_checksum += sleep_save[i];
	}

	/* *** go zzz *** */
	pxa_cpu_pm_fns->enter(state);
	FUNC0();

	if (state != PM_SUSPEND_STANDBY) {
		/* after sleeping, validate the checksum */
		for (i = 0; i < pxa_cpu_pm_fns->save_count - 1; i++)
			checksum += sleep_save[i];

		/* if invalid, display message and wait for a hardware reset */
		if (checksum != sleep_save_checksum) {

			FUNC2(0xbadbadc5);

			while (1)
				pxa_cpu_pm_fns->enter(state);
		}
		pxa_cpu_pm_fns->restore(sleep_save);
	}

	FUNC3("*** made it back from resume\n");

	return 0;
}