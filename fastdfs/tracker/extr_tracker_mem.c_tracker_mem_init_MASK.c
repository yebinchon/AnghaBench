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
 int /*<<< orphan*/  g_groups ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_file_lock ; 
 int /*<<< orphan*/  mem_thread_lock ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 

int FUNC3()
{
	int result;

	if ((result=FUNC0(&mem_thread_lock)) != 0)
	{
		return result;
	}

	if ((result=FUNC0(&mem_file_lock)) != 0)
	{
		return result;
	}

	if ((result=FUNC2()) != 0)
	{
		return result;
	}

	return FUNC1(&g_groups);
}