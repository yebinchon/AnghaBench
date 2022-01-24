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
struct vstor_packet {scalar_t__ operation; int sub_channel_count; scalar_t__ status; int /*<<< orphan*/  flags; } ;
struct storvsc_cmd_request {int /*<<< orphan*/  wait_event; struct vstor_packet vstor_packet; } ;
struct storvsc_device {int open_sub_channel; struct storvsc_cmd_request init_request; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  REQUEST_COMPLETION_FLAG ; 
 int /*<<< orphan*/  VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 scalar_t__ VSTOR_OPERATION_COMPLETE_IO ; 
 scalar_t__ VSTOR_OPERATION_CREATE_SUB_CHANNELS ; 
 struct storvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  handle_sc_creation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct storvsc_cmd_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct vstor_packet*,scalar_t__,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ vmscsi_size_delta ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void  FUNC8(struct hv_device *device, int max_chns)
{
	struct storvsc_device *stor_device;
	int num_cpus = FUNC3();
	int num_sc;
	struct storvsc_cmd_request *request;
	struct vstor_packet *vstor_packet;
	int ret, t;

	num_sc = ((max_chns > num_cpus) ? num_cpus : max_chns);
	stor_device = FUNC0(device);
	if (!stor_device)
		return;

	request = &stor_device->init_request;
	vstor_packet = &request->vstor_packet;

	stor_device->open_sub_channel = true;
	/*
	 * Establish a handler for dealing with subchannels.
	 */
	FUNC6(device->channel, handle_sc_creation);

	/*
	 * Check to see if sub-channels have already been created. This
	 * can happen when this driver is re-loaded after unloading.
	 */

	if (FUNC4(device->channel))
		return;

	stor_device->open_sub_channel = false;
	/*
	 * Request the host to create sub-channels.
	 */
	FUNC2(request, 0, sizeof(struct storvsc_cmd_request));
	FUNC1(&request->wait_event);
	vstor_packet->operation = VSTOR_OPERATION_CREATE_SUB_CHANNELS;
	vstor_packet->flags = REQUEST_COMPLETION_FLAG;
	vstor_packet->sub_channel_count = num_sc;

	ret = FUNC5(device->channel, vstor_packet,
			       (sizeof(struct vstor_packet) -
			       vmscsi_size_delta),
			       (unsigned long)request,
			       VM_PKT_DATA_INBAND,
			       VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);

	if (ret != 0)
		return;

	t = FUNC7(&request->wait_event, 10*HZ);
	if (t == 0)
		return;

	if (vstor_packet->operation != VSTOR_OPERATION_COMPLETE_IO ||
	    vstor_packet->status != 0)
		return;

	/*
	 * Now that we created the sub-channels, invoke the check; this
	 * may trigger the callback.
	 */
	stor_device->open_sub_channel = true;
	FUNC4(device->channel);
}