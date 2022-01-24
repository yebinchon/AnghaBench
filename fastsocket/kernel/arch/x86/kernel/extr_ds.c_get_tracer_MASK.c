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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tracers ; 

__attribute__((used)) static inline int FUNC5(struct task_struct *task)
{
	int error;

	FUNC3(&ds_lock);

	if (task) {
		error = -EPERM;
		if (FUNC2(&tracers) < 0)
			goto out;
		FUNC1(&tracers);
	} else {
		error = -EPERM;
		if (FUNC2(&tracers) > 0)
			goto out;
		FUNC0(&tracers);
	}

	error = 0;
out:
	FUNC4(&ds_lock);
	return error;
}