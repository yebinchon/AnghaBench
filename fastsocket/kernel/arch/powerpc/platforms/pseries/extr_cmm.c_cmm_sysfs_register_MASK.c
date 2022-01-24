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
struct sys_device {int /*<<< orphan*/ * cls; scalar_t__ id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cmm_attrs ; 
 int /*<<< orphan*/  cmm_sysdev_class ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sys_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sys_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sys_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sys_device*) ; 

__attribute__((used)) static int FUNC7(struct sys_device *sysdev)
{
	int i, rc;

	if ((rc = FUNC1(&cmm_sysdev_class)))
		return rc;

	sysdev->id = 0;
	sysdev->cls = &cmm_sysdev_class;

	if ((rc = FUNC4(sysdev)))
		goto class_unregister;

	for (i = 0; i < FUNC0(cmm_attrs); i++) {
		if ((rc = FUNC3(sysdev, cmm_attrs[i])))
			goto fail;
	}

	return 0;

fail:
	while (--i >= 0)
		FUNC5(sysdev, cmm_attrs[i]);
	FUNC6(sysdev);
class_unregister:
	FUNC2(&cmm_sysdev_class);
	return rc;
}