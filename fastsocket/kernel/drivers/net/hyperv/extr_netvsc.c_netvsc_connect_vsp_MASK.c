#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ndis_major_ver; int ndis_minor_ver; } ;
struct TYPE_7__ {TYPE_2__ send_ndis_ver; } ;
struct TYPE_8__ {TYPE_3__ v1_msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {void* nvsp_version; struct nvsp_message channel_init_pkt; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROTO ; 
 int /*<<< orphan*/  NVSP_MSG1_TYPE_SEND_NDIS_VER ; 
 void* NVSP_PROTOCOL_VERSION_1 ; 
 void* NVSP_PROTOCOL_VERSION_2 ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 struct netvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvsp_message*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct hv_device*,struct netvsc_device*,struct nvsp_message*,void*) ; 
 int FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct nvsp_message*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hv_device *device)
{
	int ret;
	struct netvsc_device *net_device;
	struct nvsp_message *init_packet;
	int ndis_version;
	struct net_device *ndev;

	net_device = FUNC0(device);
	if (!net_device)
		return -ENODEV;
	ndev = net_device->ndev;

	init_packet = &net_device->channel_init_pkt;

	/* Negotiate the latest NVSP protocol supported */
	if (FUNC2(device, net_device, init_packet,
			       NVSP_PROTOCOL_VERSION_2) == 0) {
		net_device->nvsp_version = NVSP_PROTOCOL_VERSION_2;
	} else if (FUNC2(device, net_device, init_packet,
				    NVSP_PROTOCOL_VERSION_1) == 0) {
		net_device->nvsp_version = NVSP_PROTOCOL_VERSION_1;
	} else {
		ret = -EPROTO;
		goto cleanup;
	}

	FUNC4("Negotiated NVSP version:%x\n", net_device->nvsp_version);

	/* Send the ndis version */
	FUNC1(init_packet, 0, sizeof(struct nvsp_message));

	ndis_version = 0x00050001;

	init_packet->hdr.msg_type = NVSP_MSG1_TYPE_SEND_NDIS_VER;
	init_packet->msg.v1_msg.
		send_ndis_ver.ndis_major_ver =
				(ndis_version & 0xFFFF0000) >> 16;
	init_packet->msg.v1_msg.
		send_ndis_ver.ndis_minor_ver =
				ndis_version & 0xFFFF;

	/* Send the init request */
	ret = FUNC5(device->channel, init_packet,
				sizeof(struct nvsp_message),
				(unsigned long)init_packet,
				VM_PKT_DATA_INBAND, 0);
	if (ret != 0)
		goto cleanup;

	/* Post the big receive buffer to NetVSP */
	ret = FUNC3(device);

cleanup:
	return ret;
}