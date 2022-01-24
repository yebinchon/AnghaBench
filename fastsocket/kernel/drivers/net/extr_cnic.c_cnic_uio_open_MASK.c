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
struct uio_info {struct cnic_uio_dev* priv; } ;
struct inode {int dummy; } ;
struct cnic_uio_dev {int uio_dev; struct cnic_dev* dev; } ;
struct cnic_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int EBUSY ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct uio_info *uinfo, struct inode *inode)
{
	struct cnic_uio_dev *udev = uinfo->priv;
	struct cnic_dev *dev;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	if (udev->uio_dev != -1)
		return -EBUSY;

	FUNC4();
	dev = udev->dev;

	if (!dev || !FUNC6(CNIC_F_CNIC_UP, &dev->flags)) {
		FUNC5();
		return -ENODEV;
	}

	udev->uio_dev = FUNC3(inode);

	FUNC2(dev);
	FUNC1(dev);
	FUNC5();

	return 0;
}