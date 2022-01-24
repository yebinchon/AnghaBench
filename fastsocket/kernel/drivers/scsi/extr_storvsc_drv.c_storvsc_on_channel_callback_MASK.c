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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct vstor_packet {int dummy; } ;
struct vmbus_channel {struct hv_device* device_obj; TYPE_1__* primary_channel; } ;
struct storvsc_cmd_request {int /*<<< orphan*/  wait_event; int /*<<< orphan*/  vstor_packet; } ;
struct storvsc_device {struct storvsc_cmd_request reset_request; struct storvsc_cmd_request init_request; } ;
struct hv_device {int dummy; } ;
struct TYPE_2__ {struct hv_device* device_obj; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct storvsc_device* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hv_device*,struct vstor_packet*,struct storvsc_cmd_request*) ; 
 int FUNC5 (struct vmbus_channel*,unsigned char*,int,scalar_t__*,scalar_t__*) ; 
 int vmscsi_size_delta ; 

__attribute__((used)) static void FUNC6(void *context)
{
	struct vmbus_channel *channel = (struct vmbus_channel *)context;
	struct hv_device *device;
	struct storvsc_device *stor_device;
	u32 bytes_recvd;
	u64 request_id;
	unsigned char packet[FUNC0(sizeof(struct vstor_packet), 8)];
	struct storvsc_cmd_request *request;
	int ret;

	if (channel->primary_channel != NULL)
		device = channel->primary_channel->device_obj;
	else
		device = channel->device_obj;

	stor_device = FUNC2(device);
	if (!stor_device)
		return;

	do {
		ret = FUNC5(channel, packet,
				       FUNC0((sizeof(struct vstor_packet) -
					     vmscsi_size_delta), 8),
				       &bytes_recvd, &request_id);
		if (ret == 0 && bytes_recvd > 0) {

			request = (struct storvsc_cmd_request *)
					(unsigned long)request_id;

			if ((request == &stor_device->init_request) ||
			    (request == &stor_device->reset_request)) {

				FUNC3(&request->vstor_packet, packet,
				       (sizeof(struct vstor_packet) -
					vmscsi_size_delta));
				FUNC1(&request->wait_event);
			} else {
				FUNC4(device,
						(struct vstor_packet *)packet,
						request);
			}
		} else {
			break;
		}
	} while (1);

	return;
}