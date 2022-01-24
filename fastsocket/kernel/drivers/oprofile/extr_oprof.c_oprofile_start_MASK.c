#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* start ) () ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  is_setup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ oprofile_ops ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int oprofile_started ; 
 int /*<<< orphan*/  start_mutex ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 

int FUNC5(void)
{
	int err = -EINVAL;

	FUNC0(&start_mutex);

	if (!is_setup)
		goto out;

	err = 0;

	if (oprofile_started)
		goto out;

	FUNC2();

	if ((err = oprofile_ops.start()))
		goto out;

	FUNC3();

	oprofile_started = 1;
out:
	FUNC1(&start_mutex);
	return err;
}