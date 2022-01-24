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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PROFILE_MUNMAP ; 
 int /*<<< orphan*/  PROFILE_TASK_EXIT ; 
 int /*<<< orphan*/  buffer_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  marked_cpus ; 
 int /*<<< orphan*/  module_load_nb ; 
 int /*<<< orphan*/  munmap_nb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  task_exit_nb ; 
 int /*<<< orphan*/  task_free_nb ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(void)
{
	int err;

	if (!FUNC9(&marked_cpus, GFP_KERNEL))
		return -ENOMEM;

	FUNC1(&buffer_mutex);

	err = FUNC7(&task_free_nb);
	if (err)
		goto out1;
	err = FUNC3(PROFILE_TASK_EXIT, &task_exit_nb);
	if (err)
		goto out2;
	err = FUNC3(PROFILE_MUNMAP, &munmap_nb);
	if (err)
		goto out3;
	err = FUNC5(&module_load_nb);
	if (err)
		goto out4;

	FUNC6();

out:
	FUNC2(&buffer_mutex);
	return err;
out4:
	FUNC4(PROFILE_MUNMAP, &munmap_nb);
out3:
	FUNC4(PROFILE_TASK_EXIT, &task_exit_nb);
out2:
	FUNC8(&task_free_nb);
out1:
	FUNC0(marked_cpus);
	goto out;
}