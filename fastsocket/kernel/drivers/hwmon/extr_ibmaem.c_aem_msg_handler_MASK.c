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
struct TYPE_2__ {int data_len; int /*<<< orphan*/ * data; } ;
struct ipmi_recv_msg {scalar_t__ msgid; TYPE_1__ msg; int /*<<< orphan*/  recv_type; } ;
struct aem_ipmi_data {scalar_t__ tx_msgid; unsigned short rx_msg_len; int /*<<< orphan*/  read_complete; int /*<<< orphan*/  rx_msg_data; int /*<<< orphan*/  rx_result; int /*<<< orphan*/  rx_recv_type; int /*<<< orphan*/  bmc_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPMI_UNKNOWN_ERR_COMPLETION_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_recv_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned short) ; 

__attribute__((used)) static void FUNC4(struct ipmi_recv_msg *msg, void *user_msg_data)
{
	unsigned short rx_len;
	struct aem_ipmi_data *data = user_msg_data;

	if (msg->msgid != data->tx_msgid) {
		FUNC1(data->bmc_device, "Mismatch between received msgid "
			"(%02x) and transmitted msgid (%02x)!\n",
			(int)msg->msgid,
			(int)data->tx_msgid);
		FUNC2(msg);
		return;
	}

	data->rx_recv_type = msg->recv_type;
	if (msg->msg.data_len > 0)
		data->rx_result = msg->msg.data[0];
	else
		data->rx_result = IPMI_UNKNOWN_ERR_COMPLETION_CODE;

	if (msg->msg.data_len > 1) {
		rx_len = msg->msg.data_len - 1;
		if (data->rx_msg_len < rx_len)
			rx_len = data->rx_msg_len;
		data->rx_msg_len = rx_len;
		FUNC3(data->rx_msg_data, msg->msg.data + 1, data->rx_msg_len);
	} else
		data->rx_msg_len = 0;

	FUNC2(msg);
	FUNC0(&data->read_complete);
}