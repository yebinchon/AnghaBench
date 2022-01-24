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
struct wacom_features {scalar_t__ type; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TABLETPC ; 
 scalar_t__ TABLETPC2FG ; 
 int /*<<< orphan*/  WAC_HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_interface*,int /*<<< orphan*/ ,int,unsigned char*,int,int) ; 
 int FUNC3 (struct usb_interface*,int /*<<< orphan*/ ,int,unsigned char*,int,int) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf, struct wacom_features *features)
{
	unsigned char *rep_data;
	int limit = 0, report_id = 2;
	int error = -ENOMEM;

	rep_data = FUNC1(4, GFP_KERNEL);
	if (!rep_data)
		return error;

	/* ask to report tablet data if it is 2FGT Tablet PC or
	 * not a Tablet PC */
	if (features->type == TABLETPC2FG) {
		do {
			rep_data[0] = 3;
			rep_data[1] = 4;
			rep_data[2] = 0;
			rep_data[3] = 0;
			report_id = 3;
			error = FUNC3(intf, WAC_HID_FEATURE_REPORT,
				report_id, rep_data, 4, 1);
			if (error >= 0)
				error = FUNC2(intf,
					WAC_HID_FEATURE_REPORT, report_id,
					rep_data, 4, 1);
		} while ((error < 0 || rep_data[1] != 4) && limit++ < 5);
	} else if (features->type != TABLETPC) {
		do {
			rep_data[0] = 2;
			rep_data[1] = 2;
			error = FUNC3(intf, WAC_HID_FEATURE_REPORT,
				report_id, rep_data, 2, 1);
			if (error >= 0)
				error = FUNC2(intf,
					WAC_HID_FEATURE_REPORT, report_id,
					rep_data, 2, 1);
		} while ((error < 0 || rep_data[1] != 2) && limit++ < 5);
	}

	FUNC0(rep_data);

	return error < 0 ? error : 0;
}