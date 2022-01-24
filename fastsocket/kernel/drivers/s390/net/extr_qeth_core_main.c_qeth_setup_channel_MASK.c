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
struct qeth_channel {int /*<<< orphan*/  wait_q; int /*<<< orphan*/  iob_lock; int /*<<< orphan*/  irq_pending; scalar_t__ io_buf_no; scalar_t__ buf_no; TYPE_1__* iob; } ;
struct TYPE_2__ {char* data; scalar_t__ rc; int /*<<< orphan*/  callback; struct qeth_channel* channel; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_STATE_FREE ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  QETH_BUFSIZE ; 
 int QETH_CMD_BUFFER_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qeth_send_control_data_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qeth_channel *channel)
{
	int cnt;

	FUNC0(SETUP, 2, "setupch");
	for (cnt = 0; cnt < QETH_CMD_BUFFER_NO; cnt++) {
		channel->iob[cnt].data = (char *)
			FUNC4(QETH_BUFSIZE, GFP_DMA|GFP_KERNEL);
		if (channel->iob[cnt].data == NULL)
			break;
		channel->iob[cnt].state = BUF_STATE_FREE;
		channel->iob[cnt].channel = channel;
		channel->iob[cnt].callback = qeth_send_control_data_cb;
		channel->iob[cnt].rc = 0;
	}
	if (cnt < QETH_CMD_BUFFER_NO) {
		while (cnt-- > 0)
			FUNC3(channel->iob[cnt].data);
		return -ENOMEM;
	}
	channel->buf_no = 0;
	channel->io_buf_no = 0;
	FUNC1(&channel->irq_pending, 0);
	FUNC5(&channel->iob_lock);

	FUNC2(&channel->wait_q);
	return 0;
}