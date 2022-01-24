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
struct pg {int /*<<< orphan*/  name; int /*<<< orphan*/  access; int /*<<< orphan*/ * bufptr; scalar_t__ busy; int /*<<< orphan*/  present; } ;
struct inode {int dummy; } ;
struct file {struct pg* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PG_MAX_DATA ; 
 int PG_UNITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pg* devices ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pg*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pg*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int verbose ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	int unit = FUNC1(inode) & 0x7f;
	struct pg *dev = &devices[unit];
	int ret = 0;

	FUNC3();
	if ((unit >= PG_UNITS) || (!dev->present)) {
		ret = -ENODEV;
		goto out;
	}

	if (FUNC7(0, &dev->access)) {
		ret = -EBUSY;
		goto out;
	}

	if (dev->busy) {
		FUNC5(dev);
		dev->busy = 0;
	}

	FUNC4(dev, (verbose > 1));

	dev->bufptr = FUNC2(PG_MAX_DATA, GFP_KERNEL);
	if (dev->bufptr == NULL) {
		FUNC0(0, &dev->access);
		FUNC6("%s: buffer allocation failed\n", dev->name);
		ret = -ENOMEM;
		goto out;
	}

	file->private_data = dev;

out:
	FUNC8();
	return ret;
}