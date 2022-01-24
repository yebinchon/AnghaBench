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
struct usb_interface {int dummy; } ;
struct sd {TYPE_1__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (struct sd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*) ; 
 struct gspca_dev* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *intf)
{
	struct gspca_dev *gspca_dev = FUNC3(intf);
	struct sd *sd = (struct sd *) gspca_dev;
	FUNC0(D_PROBE, "Disconnecting the stv06xx device");

	if (sd->sensor->disconnect)
		sd->sensor->disconnect(sd);
	FUNC1(intf);
}