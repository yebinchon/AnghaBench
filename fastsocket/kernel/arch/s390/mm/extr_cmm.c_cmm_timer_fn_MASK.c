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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long cmm_timed_pages_target ; 
 long cmm_timeout_pages ; 

__attribute__((used)) static void
FUNC2(unsigned long ignored)
{
	long nr;

	nr = cmm_timed_pages_target - cmm_timeout_pages;
	if (nr < 0)
		cmm_timed_pages_target = 0;
	else
		cmm_timed_pages_target = nr;
	FUNC0();
	FUNC1();
}