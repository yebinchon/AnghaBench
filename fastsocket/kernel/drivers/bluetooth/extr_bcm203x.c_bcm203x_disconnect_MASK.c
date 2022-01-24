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
struct bcm203x_data {struct bcm203x_data* buffer; struct bcm203x_data* fw_data; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm203x_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm203x_data* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct bcm203x_data *data = FUNC3(intf);

	FUNC0("intf %p", intf);

	FUNC4(data->urb);

	FUNC5(intf, NULL);

	FUNC2(data->urb);
	FUNC1(data->fw_data);
	FUNC1(data->buffer);
	FUNC1(data);
}