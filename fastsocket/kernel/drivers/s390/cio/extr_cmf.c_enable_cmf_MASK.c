#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int (* alloc ) (struct ccw_device*) ;int (* set ) (struct ccw_device*,int) ;int /*<<< orphan*/  (* free ) (struct ccw_device*) ;int /*<<< orphan*/  attr_group; int /*<<< orphan*/  (* reset ) (struct ccw_device*) ;} ;

/* Variables and functions */
 TYPE_2__* cmbops ; 
 int FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int FUNC2 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int FUNC4 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct ccw_device *cdev)
{
	int ret;

	ret = cmbops->alloc(cdev);
	cmbops->reset(cdev);
	if (ret)
		return ret;
	ret = cmbops->set(cdev, 2);
	if (ret) {
		cmbops->free(cdev);
		return ret;
	}
	ret = FUNC6(&cdev->dev.kobj, cmbops->attr_group);
	if (!ret)
		return 0;
	cmbops->set(cdev, 0);  //FIXME: this can fail
	cmbops->free(cdev);
	return ret;
}