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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (void*),void*,int) ; 

__attribute__((used)) static void FUNC3(unsigned long addr)
{
	if (FUNC0())
		FUNC1((void *)addr);
	else
		FUNC2(local_r4k_flush_data_cache_page, (void *) addr,
			        1);
}