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
struct powermate_device {int /*<<< orphan*/  config; int /*<<< orphan*/  irq; int /*<<< orphan*/  input; scalar_t__ requires_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct powermate_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct powermate_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct powermate_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct powermate_device *pm = FUNC5 (intf);

	FUNC7(intf, NULL);
	if (pm) {
		pm->requires_update = 0;
		FUNC6(pm->irq);
		FUNC0(pm->input);
		FUNC4(pm->irq);
		FUNC4(pm->config);
		FUNC3(FUNC1(intf), pm);

		FUNC2(pm);
	}
}