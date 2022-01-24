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
struct usb_kbd {int /*<<< orphan*/  leds_dma; void* leds; int /*<<< orphan*/  cr_dma; void* cr; int /*<<< orphan*/  new_dma; void* new; void* led; void* irq; } ;
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct usb_device *dev, struct usb_kbd *kbd)
{
	if (!(kbd->irq = FUNC0(0, GFP_KERNEL)))
		return -1;
	if (!(kbd->led = FUNC0(0, GFP_KERNEL)))
		return -1;
	if (!(kbd->new = FUNC1(dev, 8, GFP_ATOMIC, &kbd->new_dma)))
		return -1;
	if (!(kbd->cr = FUNC1(dev, sizeof(struct usb_ctrlrequest), GFP_ATOMIC, &kbd->cr_dma)))
		return -1;
	if (!(kbd->leds = FUNC1(dev, 1, GFP_ATOMIC, &kbd->leds_dma)))
		return -1;

	return 0;
}