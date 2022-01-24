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
 int /*<<< orphan*/  acerhdf_dev ; 
 int /*<<< orphan*/  acerhdf_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int err = 0;

	err = FUNC2(&acerhdf_driver);
	if (err)
		return err;

	acerhdf_dev = FUNC1("acerhdf", -1);
	FUNC0(acerhdf_dev);

	return 0;
}