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
struct usb_interface {int dummy; } ;
struct cm109_dev {int resetting; int /*<<< orphan*/  pm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cm109_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct cm109_dev* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct cm109_dev *dev = FUNC3(intf);

	FUNC1(&dev->pm_mutex);

	/*
	 * Make sure input events don't try to toggle buzzer
	 * while we are resetting
	 */
	dev->resetting = 1;
	FUNC2();

	FUNC0(dev);

	return 0;
}