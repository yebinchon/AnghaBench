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
struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {TYPE_2__ hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  bchars; struct usb_device* udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_USBREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cardstate *cs, const unsigned char buf[6])
{
	struct usb_device *udev = cs->hw.usb->udev;

	FUNC0(DEBUG_USBREQ, "brkchars", 6, buf);
	FUNC1(cs->hw.usb->bchars, buf, 6);
	return FUNC2(udev, FUNC3(udev, 0), 0x19, 0x41,
			       0, 0, &buf, 6, 2000);
}