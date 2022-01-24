#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wacom {int open; int /*<<< orphan*/  lock; TYPE_1__* intf; int /*<<< orphan*/  irq; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct wacom* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev)
{
	struct wacom *wacom = FUNC0(dev);
	int retval = 0;

	if (FUNC3(wacom->intf) < 0)
		return -EIO;

	FUNC1(&wacom->lock);

	if (FUNC5(wacom->irq, GFP_KERNEL)) {
		retval = -EIO;
		goto out;
	}

	wacom->open = 1;
	wacom->intf->needs_remote_wakeup = 1;

out:
	if (retval)
		FUNC4(wacom->intf);
	FUNC2(&wacom->lock);
	return retval;
}