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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nr_pages ; 
 scalar_t__ opt_hwpoison ; 
 int opt_list ; 
 scalar_t__ opt_unpoison ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_pages ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long voffset,
		     unsigned long offset, uint64_t flags)
{
	flags = FUNC3(flags);

	if (!FUNC0(flags))
		return;

	if (opt_hwpoison)
		FUNC2(offset);
	if (opt_unpoison)
		FUNC6(offset);

	if (opt_list == 1)
		FUNC5(voffset, offset, flags);
	else if (opt_list == 2)
		FUNC4(voffset, offset, flags);

	nr_pages[FUNC1(flags)]++;
	total_pages++;
}