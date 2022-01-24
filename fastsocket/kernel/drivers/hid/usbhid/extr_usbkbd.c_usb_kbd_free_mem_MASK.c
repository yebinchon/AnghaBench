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
struct usb_kbd {int /*<<< orphan*/  leds_dma; int /*<<< orphan*/  leds; int /*<<< orphan*/  cr_dma; int /*<<< orphan*/  cr; int /*<<< orphan*/  new_dma; int /*<<< orphan*/  new; int /*<<< orphan*/  led; int /*<<< orphan*/  irq; } ;
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_device *dev, struct usb_kbd *kbd)
{
	FUNC1(kbd->irq);
	FUNC1(kbd->led);
	FUNC0(dev, 8, kbd->new, kbd->new_dma);
	FUNC0(dev, sizeof(struct usb_ctrlrequest), kbd->cr, kbd->cr_dma);
	FUNC0(dev, 1, kbd->leds, kbd->leds_dma);
}