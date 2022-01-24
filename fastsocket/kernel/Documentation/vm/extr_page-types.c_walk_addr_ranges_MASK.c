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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROC_KPAGEFLAGS ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kpageflags_fd ; 
 int nr_addr_ranges ; 
 int /*<<< orphan*/ * opt_offset ; 
 int /*<<< orphan*/  opt_pid ; 
 int /*<<< orphan*/ * opt_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;

	kpageflags_fd = FUNC1(PROC_KPAGEFLAGS, O_RDONLY);

	if (!nr_addr_ranges)
		FUNC0(0, ULONG_MAX);

	for (i = 0; i < nr_addr_ranges; i++)
		if (!opt_pid)
			FUNC3(0, opt_offset[i], opt_size[i]);
		else
			FUNC4(opt_offset[i], opt_size[i]);

	FUNC2(kpageflags_fd);
}