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

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int penguins_are_doing_time ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  smp_capture_depth ; 
 int /*<<< orphan*/  smp_capture_registry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  xcall_capture ; 

void FUNC8(void)
{
	int result = FUNC0(1, &smp_capture_depth);

	if (result == 1) {
		int ncpus = FUNC3();

#ifdef CAPTURE_DEBUG
		printk("CPU[%d]: Sending penguins to jail...",
		       smp_processor_id());
#endif
		penguins_are_doing_time = 1;
		FUNC1(&smp_capture_registry);
		FUNC6(&xcall_capture, 0, 0, 0);
		while (FUNC2(&smp_capture_registry) != ncpus)
			FUNC5();
#ifdef CAPTURE_DEBUG
		printk("done\n");
#endif
	}
}