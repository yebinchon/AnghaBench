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
struct vstor_packet {int operation; } ;
struct storvsc_scan_work {int /*<<< orphan*/  work; int /*<<< orphan*/  host; } ;
struct storvsc_device {int /*<<< orphan*/  host; } ;
struct storvsc_cmd_request {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  VSTOR_OPERATION_COMPLETE_IO 130 
#define  VSTOR_OPERATION_ENUMERATE_BUS 129 
#define  VSTOR_OPERATION_REMOVE_DEVICE 128 
 struct storvsc_device* FUNC1 (struct hv_device*) ; 
 struct storvsc_scan_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  storvsc_bus_scan ; 
 int /*<<< orphan*/  FUNC4 (struct hv_device*,struct vstor_packet*,struct storvsc_cmd_request*) ; 

__attribute__((used)) static void FUNC5(struct hv_device *device,
			     struct vstor_packet *vstor_packet,
			     struct storvsc_cmd_request *request)
{
	struct storvsc_scan_work *work;
	struct storvsc_device *stor_device;

	switch (vstor_packet->operation) {
	case VSTOR_OPERATION_COMPLETE_IO:
		FUNC4(device, vstor_packet, request);
		break;

	case VSTOR_OPERATION_REMOVE_DEVICE:
	case VSTOR_OPERATION_ENUMERATE_BUS:
		stor_device = FUNC1(device);
		work = FUNC2(sizeof(struct storvsc_scan_work), GFP_ATOMIC);
		if (!work)
			return;

		FUNC0(&work->work, storvsc_bus_scan);
		work->host = stor_device->host;
		FUNC3(&work->work);
		break;

	default:
		break;
	}
}