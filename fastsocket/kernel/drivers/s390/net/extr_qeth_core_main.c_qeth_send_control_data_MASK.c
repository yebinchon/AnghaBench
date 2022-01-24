#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct qeth_reply {int (* callback ) (struct qeth_card*,struct qeth_reply*,unsigned long) ;int rc; int /*<<< orphan*/  received; TYPE_3__* card; int /*<<< orphan*/  list; int /*<<< orphan*/  wait_q; scalar_t__ seqno; void* param; } ;
struct TYPE_8__ {scalar_t__ command; scalar_t__ prot_version; } ;
struct qeth_ipa_cmd {TYPE_2__ hdr; } ;
struct qeth_cmd_buffer {int /*<<< orphan*/  channel; scalar_t__ data; } ;
struct TYPE_10__ {int buf_no; int /*<<< orphan*/  irq_pending; TYPE_5__* ccwdev; int /*<<< orphan*/  ccw; } ;
struct TYPE_7__ {int /*<<< orphan*/  ipa; } ;
struct qeth_card {scalar_t__ state; TYPE_4__ write; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_waiter_list; TYPE_1__ seqno; scalar_t__ read_or_write_problem; } ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int /*<<< orphan*/  CTRL ; 
 int EIO ; 
 int ENOMEM ; 
 int ETIME ; 
 scalar_t__ IPA_CMD_SETIP ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int QETH_CMD_BUFFER_NO ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ QETH_IDX_COMMAND_SEQNO ; 
 unsigned long QETH_IPA_TIMEOUT ; 
 scalar_t__ QETH_PROT_IPV4 ; 
 unsigned long QETH_TIMEOUT ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct qeth_reply* FUNC16 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC17 (struct qeth_card*,int,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct qeth_reply*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC22 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int FUNC25(struct qeth_card *card, int len,
		struct qeth_cmd_buffer *iob,
		int (*reply_cb)(struct qeth_card *, struct qeth_reply *,
			unsigned long),
		void *reply_param)
{
	int rc;
	unsigned long flags;
	struct qeth_reply *reply = NULL;
	unsigned long timeout, event_timeout;
	struct qeth_ipa_cmd *cmd;

	FUNC3(TRACE, 2, "sendctl");

	if (card->read_or_write_problem) {
		FUNC19(iob->channel, iob);
		return -EIO;
	}
	reply = FUNC16(card);
	if (!reply) {
		return -ENOMEM;
	}
	reply->callback = reply_cb;
	reply->param = reply_param;
	if (card->state == CARD_STATE_DOWN)
		reply->seqno = QETH_IDX_COMMAND_SEQNO;
	else
		reply->seqno = card->seqno.ipa++;
	FUNC13(&reply->wait_q);
	FUNC20(&card->lock, flags);
	FUNC14(&reply->list, &card->cmd_waiter_list);
	FUNC21(&card->lock, flags);
	FUNC1(CTRL, 2, iob->data, QETH_DBF_CTRL_LEN);

	while (FUNC5(&card->write.irq_pending, 0, 1)) ;
	FUNC17(card, len, iob);

	if (FUNC0(iob->data))
		event_timeout = QETH_IPA_TIMEOUT;
	else
		event_timeout = QETH_TIMEOUT;
	timeout = jiffies + event_timeout;

	FUNC3(TRACE, 6, "noirqpnd");
	FUNC20(FUNC12(card->write.ccwdev), flags);
	rc = FUNC9(card->write.ccwdev, &card->write.ccw,
			      (addr_t) iob, 0, 0);
	FUNC21(FUNC12(card->write.ccwdev), flags);
	if (rc) {
		FUNC2(2, "%s qeth_send_control_data: "
			"ccw_device_start rc = %i\n",
			FUNC11(&card->write.ccwdev->dev), rc);
		FUNC4(TRACE, 2, " err%d", rc);
		FUNC20(&card->lock, flags);
		FUNC15(&reply->list);
		FUNC18(reply);
		FUNC21(&card->lock, flags);
		FUNC19(iob->channel, iob);
		FUNC8(&card->write.irq_pending, 0);
		FUNC24(&card->wait_q);
		return rc;
	}

	/* we have only one long running ipassist, since we can ensure
	   process context of this command we can sleep */
	cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
	if ((cmd->hdr.command == IPA_CMD_SETIP) &&
	    (cmd->hdr.prot_version == QETH_PROT_IPV4)) {
		if (!FUNC23(reply->wait_q,
		    FUNC7(&reply->received), event_timeout))
			goto time_err;
	} else {
		while (!FUNC7(&reply->received)) {
			if (FUNC22(jiffies, timeout))
				goto time_err;
			FUNC10();
		};
	}

	if (reply->rc == -EIO)
		goto error;
	rc = reply->rc;
	FUNC18(reply);
	return rc;

time_err:
	reply->rc = -ETIME;
	FUNC20(&reply->card->lock, flags);
	FUNC15(&reply->list);
	FUNC21(&reply->card->lock, flags);
	FUNC6(&reply->received);
error:
	FUNC8(&card->write.irq_pending, 0);
	FUNC19(iob->channel, iob);
	card->write.buf_no = (card->write.buf_no + 1) % QETH_CMD_BUFFER_NO;
	rc = reply->rc;
	FUNC18(reply);
	return rc;
}