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
struct ipmi_smi_msg {int rsp_size; int* rsp; } ;
struct TYPE_2__ {int netfn; int data_len; int /*<<< orphan*/  data; } ;
struct ipmi_recv_msg {int /*<<< orphan*/  recv_type; TYPE_1__ msg; int /*<<< orphan*/  msg_data; } ;
struct ipmi_ipmb_addr {int slave_addr; int channel; int lun; int /*<<< orphan*/  addr_type; } ;
struct ipmi_addr {int dummy; } ;
typedef  int /*<<< orphan*/  ipmi_smi_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPMI_IPMB_ADDR_TYPE ; 
 int /*<<< orphan*/  IPMI_RESPONSE_RECV_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_recv_msg*) ; 
 int /*<<< orphan*/  handled_ipmb_responses ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int,int,struct ipmi_addr*,struct ipmi_recv_msg**) ; 
 int /*<<< orphan*/  invalid_ipmb_responses ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  unhandled_ipmb_responses ; 

__attribute__((used)) static int FUNC4(ipmi_smi_t          intf,
				   struct ipmi_smi_msg *msg)
{
	struct ipmi_ipmb_addr ipmb_addr;
	struct ipmi_recv_msg  *recv_msg;

	/*
	 * This is 11, not 10, because the response must contain a
	 * completion code.
	 */
	if (msg->rsp_size < 11) {
		/* Message not big enough, just ignore it. */
		FUNC2(intf, invalid_ipmb_responses);
		return 0;
	}

	if (msg->rsp[2] != 0) {
		/* An error getting the response, just ignore it. */
		return 0;
	}

	ipmb_addr.addr_type = IPMI_IPMB_ADDR_TYPE;
	ipmb_addr.slave_addr = msg->rsp[6];
	ipmb_addr.channel = msg->rsp[3] & 0x0f;
	ipmb_addr.lun = msg->rsp[7] & 3;

	/*
	 * It's a response from a remote entity.  Look up the sequence
	 * number and handle the response.
	 */
	if (FUNC1(intf,
			  msg->rsp[7] >> 2,
			  msg->rsp[3] & 0x0f,
			  msg->rsp[8],
			  (msg->rsp[4] >> 2) & (~1),
			  (struct ipmi_addr *) &(ipmb_addr),
			  &recv_msg)) {
		/*
		 * We were unable to find the sequence number,
		 * so just nuke the message.
		 */
		FUNC2(intf, unhandled_ipmb_responses);
		return 0;
	}

	FUNC3(recv_msg->msg_data,
	       &(msg->rsp[9]),
	       msg->rsp_size - 9);
	/*
	 * The other fields matched, so no need to set them, except
	 * for netfn, which needs to be the response that was
	 * returned, not the request value.
	 */
	recv_msg->msg.netfn = msg->rsp[4] >> 2;
	recv_msg->msg.data = recv_msg->msg_data;
	recv_msg->msg.data_len = msg->rsp_size - 10;
	recv_msg->recv_type = IPMI_RESPONSE_RECV_TYPE;
	FUNC2(intf, handled_ipmb_responses);
	FUNC0(recv_msg);

	return 0;
}