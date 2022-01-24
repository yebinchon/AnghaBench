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
typedef  int /*<<< orphan*/  smpfunc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  (*) (unsigned long)) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(unsigned long page)
{
	/* Current theory is that those who call this are the one's
	 * who have just dirtied their cache with the pages contents
	 * in kernel space, therefore we only run this on local cpu.
	 *
	 * XXX This experiment failed, research further... -DaveM
	 */
#if 1
	FUNC2((smpfunc_t) FUNC0(local_flush_page_to_ram), page);
#endif
	FUNC1(page);
}