#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  TYPE_1__* pdabusb_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ opened; int /*<<< orphan*/  remove_ok; TYPE_2__* usbdev; int /*<<< orphan*/  remove_pending; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  _DABUSB_IF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (struct inode *inode, struct file *file)
{
	pdabusb_t s = (pdabusb_t) file->private_data;

	FUNC2("dabusb_release");

	FUNC4(&s->mutex);
	FUNC1 (s);
	FUNC0 (s);
	FUNC5(&s->mutex);

	if (!s->remove_pending) {
		if (FUNC6 (s->usbdev, _DABUSB_IF, 0) < 0)
			FUNC3(&s->usbdev->dev, "set_interface failed\n");
	}
	else
		FUNC7 (&s->remove_ok);

	s->opened = 0;
	return 0;
}