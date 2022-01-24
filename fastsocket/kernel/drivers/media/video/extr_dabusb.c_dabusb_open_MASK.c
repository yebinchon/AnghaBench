#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int f_flags; TYPE_1__* private_data; scalar_t__ f_pos; } ;
typedef  TYPE_1__* pdabusb_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int opened; int /*<<< orphan*/  mutex; TYPE_2__* usbdev; } ;

/* Variables and functions */
 int DABUSB_MINOR ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int NRDABUSB ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  _DABUSB_IF ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* dabusb ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct file*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9 (struct inode *inode, struct file *file)
{
	int devnum = FUNC2(inode);
	pdabusb_t s;

	if (devnum < DABUSB_MINOR || devnum >= (DABUSB_MINOR + NRDABUSB))
		return -EIO;

	s = &dabusb[devnum - DABUSB_MINOR];

	FUNC0("dabusb_open");
	FUNC4(&s->mutex);

	while (!s->usbdev || s->opened) {
		FUNC5(&s->mutex);

		if (file->f_flags & O_NONBLOCK) {
			return -EBUSY;
		}
		FUNC3(500);

		if (FUNC7 (current)) {
			return -EAGAIN;
		}
		FUNC4(&s->mutex);
	}
	if (FUNC8 (s->usbdev, _DABUSB_IF, 1) < 0) {
		FUNC5(&s->mutex);
		FUNC1(&s->usbdev->dev, "set_interface failed\n");
		return -EINVAL;
	}
	s->opened = 1;
	FUNC5(&s->mutex);

	file->f_pos = 0;
	file->private_data = s;

	return FUNC6(inode, file);
}