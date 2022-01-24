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
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acerhdf_cooling_ops ; 
 int /*<<< orphan*/  acerhdf_dev_ops ; 
 int /*<<< orphan*/  cl_dev ; 
 int interval ; 
 scalar_t__ kernelmode ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  thz_dev ; 

__attribute__((used)) static int FUNC3(void)
{
	cl_dev = FUNC1("acerhdf-fan", NULL,
						 &acerhdf_cooling_ops);

	if (FUNC0(cl_dev))
		return -EINVAL;

	thz_dev = FUNC2("acerhdf", 1, NULL,
					      &acerhdf_dev_ops, 0, 0, 0,
					      (kernelmode) ? interval*1000 : 0);
	if (FUNC0(thz_dev))
		return -EINVAL;

	return 0;
}