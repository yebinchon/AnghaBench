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
struct vmpacket_descriptor {int offset8; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  size; } ;
struct synthhid_msg {TYPE_2__ header; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct synthhid_input_report {TYPE_1__ header; int /*<<< orphan*/  buffer; } ;
struct synthhid_device_info {int dummy; } ;
struct pipe_prt_msg {scalar_t__ type; int size; scalar_t__ data; } ;
struct mousevsc_prt_msg {int dummy; } ;
struct mousevsc_dev {int /*<<< orphan*/  hid_device; int /*<<< orphan*/  init_complete; int /*<<< orphan*/  wait_event; int /*<<< orphan*/  protocol_resp; } ;
struct hv_input_dev_info {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 scalar_t__ PIPE_MESSAGE_DATA ; 
#define  SYNTH_HID_INITIAL_DEVICE_INFO 130 
#define  SYNTH_HID_INPUT_REPORT 129 
#define  SYNTH_HID_PROTOCOL_RESPONSE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mousevsc_dev* FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pipe_prt_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mousevsc_dev*,struct synthhid_device_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hv_device *device,
				struct vmpacket_descriptor *packet)
{
	struct pipe_prt_msg *pipe_msg;
	struct synthhid_msg *hid_msg;
	struct mousevsc_dev *input_dev = FUNC3(device);
	struct synthhid_input_report *input_report;

	pipe_msg = (struct pipe_prt_msg *)((unsigned long)packet +
						(packet->offset8 << 3));

	if (pipe_msg->type != PIPE_MESSAGE_DATA)
		return;

	hid_msg = (struct synthhid_msg *)pipe_msg->data;

	switch (hid_msg->header.type) {
	case SYNTH_HID_PROTOCOL_RESPONSE:
		/*
		 * While it will be impossible for us to protect against
		 * malicious/buggy hypervisor/host, add a check here to
		 * ensure we don't corrupt memory.
		 */
		if ((pipe_msg->size + sizeof(struct pipe_prt_msg)
			- sizeof(unsigned char))
			> sizeof(struct mousevsc_prt_msg)) {
			FUNC0(1);
			break;
		}

		FUNC4(&input_dev->protocol_resp, pipe_msg,
		       pipe_msg->size + sizeof(struct pipe_prt_msg) -
		       sizeof(unsigned char));
		FUNC1(&input_dev->wait_event);
		break;

	case SYNTH_HID_INITIAL_DEVICE_INFO:
		FUNC0(pipe_msg->size < sizeof(struct hv_input_dev_info));

		/*
		 * Parse out the device info into device attr,
		 * hid desc and report desc
		 */
		FUNC5(input_dev,
			(struct synthhid_device_info *)pipe_msg->data);
		break;
	case SYNTH_HID_INPUT_REPORT:
		input_report =
			(struct synthhid_input_report *)pipe_msg->data;
		if (!input_dev->init_complete)
			break;
		FUNC2(input_dev->hid_device,
				HID_INPUT_REPORT, input_report->buffer,
				input_report->header.size, 1);
		break;
	default:
		FUNC6("unsupported hid msg type - type %d len %d",
		       hid_msg->header.type, hid_msg->header.size);
		break;
	}

}