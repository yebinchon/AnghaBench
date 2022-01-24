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
 int /*<<< orphan*/  PROFILE_MUNMAP ; 
 int /*<<< orphan*/  PROFILE_TASK_EXIT ; 
 int /*<<< orphan*/  buffer_mutex ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  marked_cpus ; 
 int /*<<< orphan*/  module_load_nb ; 
 int /*<<< orphan*/  munmap_nb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_exit_nb ; 
 int /*<<< orphan*/  task_free_nb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	/* flush buffers */
	FUNC3(&buffer_mutex);
	FUNC0();
	FUNC8(&module_load_nb);
	FUNC6(PROFILE_MUNMAP, &munmap_nb);
	FUNC6(PROFILE_TASK_EXIT, &task_exit_nb);
	FUNC7(&task_free_nb);
	FUNC4(&buffer_mutex);
	FUNC1();

	/* make sure we don't leak task structs */
	FUNC5();
	FUNC5();

	FUNC2(marked_cpus);
}