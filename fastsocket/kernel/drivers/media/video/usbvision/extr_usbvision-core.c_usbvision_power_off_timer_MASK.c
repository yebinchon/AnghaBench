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
struct usb_usbvision {int /*<<< orphan*/  power_off_work; int /*<<< orphan*/  power_off_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  call_usbvision_power_off ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct usb_usbvision *usbvision = (void *)data;

	FUNC1(DBG_FUNC, "");
	FUNC2(&usbvision->power_off_timer);
	FUNC0(&usbvision->power_off_work, call_usbvision_power_off);
	(void) FUNC3(&usbvision->power_off_work);
}