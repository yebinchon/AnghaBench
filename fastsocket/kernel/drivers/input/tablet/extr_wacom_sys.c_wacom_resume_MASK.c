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
struct wacom_features {int dummy; } ;
struct wacom {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; scalar_t__ open; TYPE_1__* wacom_wac; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct wacom_features* features; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wacom* FUNC2 (struct usb_interface*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,struct wacom_features*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,struct wacom_features*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf)
{
	struct wacom *wacom = FUNC2(intf);
	struct wacom_features *features = wacom->wacom_wac->features;
	int rv = 0;

	FUNC0(&wacom->lock);

	/* switch to wacom mode if needed */
	if (!FUNC6(intf, features))
		FUNC5(intf, features);
	FUNC4(wacom);

	if (wacom->open && FUNC3(wacom->irq, GFP_NOIO) < 0)
		rv = -EIO;

	FUNC1(&wacom->lock);

	return rv;
}