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
struct usbhid_device {int outhead; int outtail; int ctrlhead; int ctrltail; scalar_t__ urbctrl; scalar_t__ last_ctrl; int /*<<< orphan*/  iofl; TYPE_2__* ctrl; scalar_t__ urbout; scalar_t__ last_out; TYPE_1__* out; } ;
struct hid_report {int size; scalar_t__ id; scalar_t__ type; } ;
struct hid_device {int quirks; int /*<<< orphan*/  dev; struct usbhid_device* driver_data; } ;
struct TYPE_4__ {unsigned char dir; struct hid_report* report; void* raw_report; } ;
struct TYPE_3__ {struct hid_report* report; void* raw_report; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HID_CONTROL_FIFO_SIZE ; 
 int /*<<< orphan*/  HID_CTRL_RUNNING ; 
 int HID_OUTPUT_FIFO_SIZE ; 
 scalar_t__ HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_OUT_RUNNING ; 
 int HID_QUIRK_NOGET ; 
 int HZ ; 
 unsigned char USB_DIR_IN ; 
 unsigned char USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_report*,void*) ; 
 scalar_t__ FUNC3 (struct hid_device*) ; 
 scalar_t__ FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct hid_device *hid, struct hid_report *report,
				   unsigned char dir)
{
	int head;
	struct usbhid_device *usbhid = hid->driver_data;
	int len = ((report->size - 1) >> 3) + 1 + (report->id > 0);

	if ((hid->quirks & HID_QUIRK_NOGET) && dir == USB_DIR_IN)
		return;

	if (usbhid->urbout && dir == USB_DIR_OUT && report->type == HID_OUTPUT_REPORT) {
		if ((head = (usbhid->outhead + 1) & (HID_OUTPUT_FIFO_SIZE - 1)) == usbhid->outtail) {
			FUNC1(&hid->dev, "output queue full\n");
			return;
		}

		usbhid->out[usbhid->outhead].raw_report = FUNC5(len, GFP_ATOMIC);
		if (!usbhid->out[usbhid->outhead].raw_report) {
			FUNC1(&hid->dev, "output queueing failed\n");
			return;
		}
		FUNC2(report, usbhid->out[usbhid->outhead].raw_report);
		usbhid->out[usbhid->outhead].report = report;
		usbhid->outhead = head;

		if (!FUNC6(HID_OUT_RUNNING, &usbhid->iofl)) {
			if (FUNC4(hid))
				FUNC0(HID_OUT_RUNNING, &usbhid->iofl);
		} else {
			/*
			 * the queue is known to run
			 * but an earlier request may be stuck
			 * we may need to time out
			 * no race because this is called under
			 * spinlock
			 */
			if (FUNC7(jiffies, usbhid->last_out + HZ * 5))
				FUNC8(usbhid->urbout);
		}
		return;
	}

	if ((head = (usbhid->ctrlhead + 1) & (HID_CONTROL_FIFO_SIZE - 1)) == usbhid->ctrltail) {
		FUNC1(&hid->dev, "control queue full\n");
		return;
	}

	if (dir == USB_DIR_OUT) {
		usbhid->ctrl[usbhid->ctrlhead].raw_report = FUNC5(len, GFP_ATOMIC);
		if (!usbhid->ctrl[usbhid->ctrlhead].raw_report) {
			FUNC1(&hid->dev, "control queueing failed\n");
			return;
		}
		FUNC2(report, usbhid->ctrl[usbhid->ctrlhead].raw_report);
	}
	usbhid->ctrl[usbhid->ctrlhead].report = report;
	usbhid->ctrl[usbhid->ctrlhead].dir = dir;
	usbhid->ctrlhead = head;

	if (!FUNC6(HID_CTRL_RUNNING, &usbhid->iofl)) {
		if (FUNC3(hid))
			FUNC0(HID_CTRL_RUNNING, &usbhid->iofl);
	} else {
		/*
		 * the queue is known to run
		 * but an earlier request may be stuck
		 * we may need to time out
		 * no race because this is called under
		 * spinlock
		 */
		if (FUNC7(jiffies, usbhid->last_ctrl + HZ * 5))
			FUNC8(usbhid->urbctrl);
	}
}