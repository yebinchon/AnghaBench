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
struct wacom_features {unsigned char unit; unsigned char unitExpo; int pressure_max; void* y_max; void* device_type; void* pktlen; int /*<<< orphan*/  type; void* y_phy; void* x_max; void* x_phy; } ;
struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {int dummy; } ;
struct hid_descriptor {int wDescriptorLength; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 void* BTN_TOOL_FINGER ; 
 void* BTN_TOOL_PEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HID_COLLECTION 136 
 int HID_DEVICET_REPORT ; 
#define  HID_USAGE 135 
#define  HID_USAGE_FINGER 134 
#define  HID_USAGE_PAGE 133 
#define  HID_USAGE_PAGE_DESKTOP 132 
#define  HID_USAGE_PAGE_DIGITIZER 131 
#define  HID_USAGE_STYLUS 130 
#define  HID_USAGE_X 129 
#define  HID_USAGE_Y 128 
 int /*<<< orphan*/  TABLETPC2FG ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 void* WACOM_PKGLEN_PENABLED ; 
 void* WACOM_PKGLEN_TPC2FG ; 
 int WCM_DESKTOP ; 
 int WCM_DIGITIZER ; 
 int WCM_UNDEFINED ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (unsigned char*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, struct hid_descriptor *hid_desc,
			   struct wacom_features *features)
{
	struct usb_device *dev = FUNC0(intf);
	char limit = 0;
	/* result has to be defined as int for some devices */
 	int result = 0;
	int i = 0, usage = WCM_UNDEFINED, finger = 0, pen = 0;
	unsigned char *report;

	report = FUNC2(hid_desc->wDescriptorLength, GFP_KERNEL);
	if (!report)
		return -ENOMEM;

	/* retrive report descriptors */
	do {
		result = FUNC3(dev, FUNC4(dev, 0),
			USB_REQ_GET_DESCRIPTOR,
			USB_RECIP_INTERFACE | USB_DIR_IN,
			HID_DEVICET_REPORT << 8,
			intf->altsetting[0].desc.bInterfaceNumber, /* interface */
			report,
			hid_desc->wDescriptorLength,
			5000); /* 5 secs */
	} while (result < 0 && limit++ < 5);

	/* No need to parse the Descriptor. It isn't an error though */
	if (result < 0)
		goto out;

	for (i = 0; i < hid_desc->wDescriptorLength; i++) {

		switch (report[i]) {
		case HID_USAGE_PAGE:
			switch (report[i + 1]) {
			case HID_USAGE_PAGE_DIGITIZER:
				usage = WCM_DIGITIZER;
				i++;
				break;

			case HID_USAGE_PAGE_DESKTOP:
				usage = WCM_DESKTOP;
				i++;
				break;
			}
			break;

		case HID_USAGE:
			switch (report[i + 1]) {
			case HID_USAGE_X:
				if (usage == WCM_DESKTOP) {
					if (finger) {
						features->device_type = BTN_TOOL_FINGER;
						if (features->type == TABLETPC2FG) {
							/* need to reset back */
							features->pktlen = WACOM_PKGLEN_TPC2FG;
						}
						features->x_max =
							FUNC5(&report[i + 3]);
						features->x_phy =
							FUNC5(&report[i + 6]);
						features->unit = report[i + 9];
						features->unitExpo = report[i + 11];
						i += 12;
					} else if (pen) {
						/* penabled only accepts exact bytes of data */
						if (features->type == TABLETPC2FG)
							features->pktlen = WACOM_PKGLEN_PENABLED;
						features->device_type = BTN_TOOL_PEN;
						features->x_max =
							FUNC5(&report[i + 3]);
						i += 4;
					}
				} else if (usage == WCM_DIGITIZER) {
					/* max pressure isn't reported
					features->pressure_max = (unsigned short)
							(report[i+4] << 8  | report[i + 3]);
					*/
					features->pressure_max = 255;
					i += 4;
				}
				break;

			case HID_USAGE_Y:
				if (usage == WCM_DESKTOP) {
					if (finger) {
						features->device_type = BTN_TOOL_FINGER;
						if (features->type == TABLETPC2FG) {
							/* need to reset back */
							features->pktlen = WACOM_PKGLEN_TPC2FG;
							features->y_max =
								FUNC5(&report[i + 3]);
							features->y_phy =
								FUNC5(&report[i + 6]);
							i += 7;
						} else {
							features->y_max =
								features->x_max;
							features->y_phy =
								FUNC5(&report[i + 3]);
							i += 4;
						}
					} else if (pen) {
						/* penabled only accepts exact bytes of data */
						if (features->type == TABLETPC2FG)
							features->pktlen = WACOM_PKGLEN_PENABLED;
						features->device_type = BTN_TOOL_PEN;
						features->y_max =
							FUNC5(&report[i + 3]);
						i += 4;
					}
				}
				break;

			case HID_USAGE_FINGER:
				finger = 1;
				i++;
				break;

			case HID_USAGE_STYLUS:
				pen = 1;
				i++;
				break;
			}
			break;

		case HID_COLLECTION:
			/* reset UsagePage and Finger */
			finger = usage = 0;
			break;
		}
	}

 out:
	result = 0;
	FUNC1(report);
	return result;
}