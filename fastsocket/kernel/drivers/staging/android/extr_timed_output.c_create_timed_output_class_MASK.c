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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  device_count ; 
 scalar_t__ timed_output_class ; 

__attribute__((used)) static int FUNC4(void)
{
	if (!timed_output_class) {
		timed_output_class = FUNC3(THIS_MODULE, "timed_output");
		if (FUNC0(timed_output_class))
			return FUNC1(timed_output_class);
		FUNC2(&device_count, 0);
	}

	return 0;
}