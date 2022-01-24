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
struct lirc_driver {size_t minor; int /*<<< orphan*/  owner; int /*<<< orphan*/ * fops; } ;
struct irctl {struct lirc_driver d; } ;
struct cdev {int /*<<< orphan*/  kobj; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct cdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*,int /*<<< orphan*/ *) ; 
 struct cdev* cdevs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  lirc_base_dev ; 
 int /*<<< orphan*/  lirc_dev_fops ; 

__attribute__((used)) static int FUNC6(struct irctl *ir)
{
	int retval;
	struct lirc_driver *d = &ir->d;
	struct cdev *cdev = &cdevs[d->minor];

	if (d->fops) {
		FUNC3(cdev, d->fops);
		cdev->owner = d->owner;
	} else {
		FUNC3(cdev, &lirc_dev_fops);
		cdev->owner = THIS_MODULE;
	}
	retval = FUNC5(&cdev->kobj, "lirc%d", d->minor);
	if (retval)
		return retval;

	retval = FUNC2(cdev, FUNC1(FUNC0(lirc_base_dev), d->minor), 1);
	if (retval)
		FUNC4(&cdev->kobj);

	return retval;
}