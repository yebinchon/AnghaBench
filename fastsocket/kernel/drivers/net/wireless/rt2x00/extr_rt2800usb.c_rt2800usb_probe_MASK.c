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
struct usb_device_id {int driver_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  rt2800usb_ops ; 
 int /*<<< orphan*/  rt2800usb_ops_5592 ; 
 int FUNC0 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct usb_interface *usb_intf,
			   const struct usb_device_id *id)
{
	if (id->driver_info == 5592)
		return FUNC0(usb_intf, &rt2800usb_ops_5592);

	return FUNC0(usb_intf, &rt2800usb_ops);
}