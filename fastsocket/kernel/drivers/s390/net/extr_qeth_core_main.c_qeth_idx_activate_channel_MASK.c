#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct qeth_cmd_buffer {void (* callback ) (struct qeth_channel*,struct qeth_cmd_buffer*) ;TYPE_4__* data; } ;
struct TYPE_25__ {int count; scalar_t__ cda; } ;
struct qeth_channel {scalar_t__ state; TYPE_5__* ccwdev; int /*<<< orphan*/  irq_pending; TYPE_4__ ccw; } ;
struct TYPE_24__ {int func_level; int cula; int unit_addr2; scalar_t__ portno; } ;
struct TYPE_23__ {int issuer_rm_w; } ;
struct TYPE_22__ {int trans_hdr; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; TYPE_3__ info; TYPE_2__ token; TYPE_1__ seqno; struct qeth_channel write; } ;
struct ccw_dev_id {int devno; } ;
struct ccw1 {int dummy; } ;
typedef  int /*<<< orphan*/  addr_t ;
typedef  int __u8 ;
typedef  scalar_t__ __u32 ;
typedef  int __u16 ;
struct TYPE_26__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 struct qeth_card* FUNC1 (TYPE_5__*) ; 
 scalar_t__ CH_STATE_ACTIVATING ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int* IDX_ACTIVATE_READ ; 
 int IDX_ACTIVATE_SIZE ; 
 int* IDX_ACTIVATE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_4__*) ; 
 TYPE_4__* FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (TYPE_4__*) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int QETH_SEQ_NO_LENGTH ; 
 int /*<<< orphan*/  QETH_TIMEOUT ; 
 TYPE_4__* FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  SETUP ; 
 int* WRITE_CCW ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ccw_dev_id*) ; 
 int FUNC15 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct qeth_channel*) ; 
 struct qeth_cmd_buffer* FUNC21 (struct qeth_channel*) ; 
 int FUNC22 (struct qeth_channel*,void (*) (struct qeth_channel*,struct qeth_cmd_buffer*)) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int FUNC26 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct qeth_channel *channel,
		void (*idx_reply_cb)(struct qeth_channel *,
			struct qeth_cmd_buffer *))
{
	struct qeth_card *card;
	struct qeth_cmd_buffer *iob;
	unsigned long flags;
	__u16 temp;
	__u8 tmp;
	int rc;
	struct ccw_dev_id temp_devid;

	card = FUNC1(channel->ccwdev);

	FUNC3(SETUP, 2, "idxactch");

	iob = FUNC21(channel);
	iob->callback = idx_reply_cb;
	FUNC19(&channel->ccw, WRITE_CCW, sizeof(struct ccw1));
	channel->ccw.count = IDX_ACTIVATE_SIZE;
	channel->ccw.cda = (__u32) FUNC11(iob->data);
	if (channel == &card->write) {
		FUNC19(iob->data, IDX_ACTIVATE_WRITE, IDX_ACTIVATE_SIZE);
		FUNC19(FUNC10(iob->data),
		       &card->seqno.trans_hdr, QETH_SEQ_NO_LENGTH);
		card->seqno.trans_hdr++;
	} else {
		FUNC19(iob->data, IDX_ACTIVATE_READ, IDX_ACTIVATE_SIZE);
		FUNC19(FUNC10(iob->data),
		       &card->seqno.trans_hdr, QETH_SEQ_NO_LENGTH);
	}
	tmp = ((__u8)card->info.portno) | 0x80;
	FUNC19(FUNC7(iob->data), &tmp, 1);
	FUNC19(FUNC6(iob->data),
	       &card->token.issuer_rm_w, QETH_MPC_TOKEN_LENGTH);
	FUNC19(FUNC5(iob->data),
	       &card->info.func_level, sizeof(__u16));
	FUNC14(FUNC0(card), &temp_devid);
	FUNC19(FUNC8(iob->data), &temp_devid.devno, 2);
	temp = (card->info.cula << 8) + card->info.unit_addr2;
	FUNC19(FUNC9(iob->data), &temp, 2);

	FUNC25(card->wait_q,
		   FUNC12(&channel->irq_pending, 0, 1) == 0);
	FUNC3(SETUP, 6, "noirqpnd");
	FUNC23(FUNC18(channel->ccwdev), flags);
	rc = FUNC15(channel->ccwdev,
			      &channel->ccw, (addr_t) iob, 0, 0);
	FUNC24(FUNC18(channel->ccwdev), flags);

	if (rc) {
		FUNC2(2, "Error1 in activating channel. rc=%d\n",
			rc);
		FUNC4(SETUP, 2, "1err%d", rc);
		FUNC13(&channel->irq_pending, 0);
		FUNC27(&card->wait_q);
		return rc;
	}
	rc = FUNC26(card->wait_q,
			channel->state == CH_STATE_ACTIVATING, QETH_TIMEOUT);
	if (rc == -ERESTARTSYS)
		return rc;
	if (channel->state != CH_STATE_ACTIVATING) {
		FUNC17(&channel->ccwdev->dev, "The qeth device driver"
			" failed to recover an error on the device\n");
		FUNC2(2, "%s IDX activate timed out\n",
			FUNC16(&channel->ccwdev->dev));
		FUNC4(SETUP, 2, "2err%d", -ETIME);
		FUNC20(channel);
		return -ETIME;
	}
	return FUNC22(channel, idx_reply_cb);
}