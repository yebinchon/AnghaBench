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
struct usb_device_id {int dummy; } ;
struct sd {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/  vdev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC1 (struct usb_interface*,struct usb_device_id const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_desc_mi1320 ; 
 struct gspca_dev* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct gspca_dev *gspca_dev;
	s32 ret;

	ret = FUNC1(intf, id,
			&sd_desc_mi1320, sizeof(struct sd), THIS_MODULE);

	if (ret >= 0) {
		gspca_dev = FUNC2(intf);

		FUNC0(D_PROBE,
			"Camera is now controlling video device %s",
			FUNC3(&gspca_dev->vdev));
	}

	return ret;
}