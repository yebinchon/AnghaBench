#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_kbd {scalar_t__* leds; scalar_t__ newleds; TYPE_2__* led; int /*<<< orphan*/  usbdev; } ;
struct urb {scalar_t__ status; TYPE_1__* dev; struct usb_kbd* context; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct usb_kbd *kbd = urb->context;

	if (urb->status)
		FUNC0(&urb->dev->dev, "led urb status %d received\n",
			 urb->status);

	if (*(kbd->leds) == kbd->newleds)
		return;

	*(kbd->leds) = kbd->newleds;
	kbd->led->dev = kbd->usbdev;
	if (FUNC2(kbd->led, GFP_ATOMIC))
		FUNC1("usb_submit_urb(leds) failed");
}