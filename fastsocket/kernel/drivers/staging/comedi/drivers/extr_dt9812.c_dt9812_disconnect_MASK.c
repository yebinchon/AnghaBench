#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int minor; int /*<<< orphan*/  dev; } ;
struct usb_dt9812 {int /*<<< orphan*/  kref; TYPE_1__* slot; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dt9812_delete ; 
 int /*<<< orphan*/  dt9812_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_dt9812* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct usb_dt9812 *dev;
	int minor = interface->minor;

	FUNC1(&dt9812_mutex);
	dev = FUNC4(interface);
	if (dev->slot) {
		FUNC1(&dev->slot->mutex);
		dev->slot->usb = NULL;
		FUNC3(&dev->slot->mutex);
		dev->slot = NULL;
	}
	FUNC5(interface, NULL);
	FUNC3(&dt9812_mutex);

	/* queue final destruction */
	FUNC2(&dev->kref, dt9812_delete);

	FUNC0(&interface->dev, "USB Dt9812 #%d now disconnected\n", minor);
}