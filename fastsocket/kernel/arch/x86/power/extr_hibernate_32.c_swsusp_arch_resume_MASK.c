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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * resume_pg_dir ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	int error;

	resume_pg_dir = (pgd_t *)FUNC0(GFP_ATOMIC);
	if (!resume_pg_dir)
		return -ENOMEM;

	FUNC2(resume_pg_dir);
	error = FUNC3(resume_pg_dir);
	if (error)
		return error;

	/* We have got enough memory and from now on we cannot recover */
	FUNC1();
	return 0;
}