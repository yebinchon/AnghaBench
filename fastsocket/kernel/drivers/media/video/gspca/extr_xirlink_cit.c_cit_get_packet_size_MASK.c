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
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct gspca_dev {int /*<<< orphan*/  alt; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_host_interface* FUNC2 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	struct usb_host_interface *alt;
	struct usb_interface *intf;

	intf = FUNC3(gspca_dev->dev, gspca_dev->iface);
	alt = FUNC2(intf, gspca_dev->alt);
	if (!alt) {
		FUNC0("Couldn't get altsetting");
		return -EIO;
	}

	return FUNC1(alt->endpoint[0].desc.wMaxPacketSize);
}