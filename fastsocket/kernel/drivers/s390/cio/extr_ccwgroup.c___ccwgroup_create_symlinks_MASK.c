#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct ccwgroup_device {int count; TYPE_3__** cdev; TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC3(struct ccwgroup_device *gdev)
{
	char str[8];
	int i, rc;

	for (i = 0; i < gdev->count; i++) {
		rc = FUNC1(&gdev->cdev[i]->dev.kobj, &gdev->dev.kobj,
				       "group_device");
		if (rc) {
			for (--i; i >= 0; i--)
				FUNC2(&gdev->cdev[i]->dev.kobj,
						  "group_device");
			return rc;
		}
	}
	for (i = 0; i < gdev->count; i++) {
		FUNC0(str, "cdev%d", i);
		rc = FUNC1(&gdev->dev.kobj, &gdev->cdev[i]->dev.kobj,
				       str);
		if (rc) {
			for (--i; i >= 0; i--) {
				FUNC0(str, "cdev%d", i);
				FUNC2(&gdev->dev.kobj, str);
			}
			for (i = 0; i < gdev->count; i++)
				FUNC2(&gdev->cdev[i]->dev.kobj,
						  "group_device");
			return rc;
		}
	}
	return 0;
}