#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAXMINOR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* vmlogrdr_cdev ; 
 int /*<<< orphan*/  vmlogrdr_fops ; 

__attribute__((used)) static int FUNC3(dev_t dev)
{
	int rc = 0;
	vmlogrdr_cdev = FUNC1();
	if (!vmlogrdr_cdev) {
		return -ENOMEM;
	}
	vmlogrdr_cdev->owner = THIS_MODULE;
	vmlogrdr_cdev->ops = &vmlogrdr_fops;
	vmlogrdr_cdev->dev = dev;
	rc = FUNC0(vmlogrdr_cdev, vmlogrdr_cdev->dev, MAXMINOR);
	if (!rc)
		return 0;

	// cleanup: cdev is not fully registered, no cdev_del here!
	FUNC2(&vmlogrdr_cdev->kobj);
	vmlogrdr_cdev=NULL;
	return rc;
}