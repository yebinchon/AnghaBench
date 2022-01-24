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
struct usb_kbd {int newleds; int* leds; TYPE_1__* led; int /*<<< orphan*/  usbdev; } ;
struct input_dev {int /*<<< orphan*/  led; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 unsigned int EV_LED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_KANA ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct usb_kbd* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, unsigned int type,
			 unsigned int code, int value)
{
	struct usb_kbd *kbd = FUNC1(dev);

	if (type != EV_LED)
		return -1;

	kbd->newleds = (!!FUNC2(LED_KANA,    dev->led) << 3) | (!!FUNC2(LED_COMPOSE, dev->led) << 3) |
		       (!!FUNC2(LED_SCROLLL, dev->led) << 2) | (!!FUNC2(LED_CAPSL,   dev->led) << 1) |
		       (!!FUNC2(LED_NUML,    dev->led));

	if (kbd->led->status == -EINPROGRESS)
		return 0;

	if (*(kbd->leds) == kbd->newleds)
		return 0;

	*(kbd->leds) = kbd->newleds;
	kbd->led->dev = kbd->usbdev;
	if (FUNC3(kbd->led, GFP_ATOMIC))
		FUNC0("usb_submit_urb(leds) failed");

	return 0;
}