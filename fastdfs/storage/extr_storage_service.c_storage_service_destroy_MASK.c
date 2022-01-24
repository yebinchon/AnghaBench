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
 int /*<<< orphan*/  g_storage_thread_lock ; 
 int /*<<< orphan*/  path_index_thread_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stat_count_thread_lock ; 

void FUNC1()
{
	FUNC0(&g_storage_thread_lock);
	FUNC0(&path_index_thread_lock);
	FUNC0(&stat_count_thread_lock);
}