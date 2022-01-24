#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct qeth_cmd_buffer {scalar_t__ state; int /*<<< orphan*/  (* callback ) (struct qeth_channel*,struct qeth_cmd_buffer*) ;} ;
struct qeth_channel {scalar_t__ state; size_t buf_no; struct qeth_cmd_buffer* iob; struct ccw_device* ccwdev; int /*<<< orphan*/  irq_pending; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; struct qeth_channel read; struct qeth_channel data; struct qeth_channel write; } ;
struct TYPE_8__ {scalar_t__ cons; } ;
struct TYPE_9__ {TYPE_3__ erw; } ;
struct TYPE_10__ {TYPE_4__ esw0; } ;
struct TYPE_6__ {int cstat; int dstat; int fctl; } ;
struct TYPE_7__ {TYPE_1__ cmd; } ;
struct irb {struct irb* ecw; TYPE_5__ esw; TYPE_2__ scsw; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  addr_t ;
typedef  size_t __u8 ;

/* Variables and functions */
 scalar_t__ BUF_STATE_PROCESSED ; 
 struct qeth_card* FUNC0 (struct ccw_device*) ; 
 scalar_t__ CH_STATE_DOWN ; 
 scalar_t__ CH_STATE_HALTED ; 
 scalar_t__ CH_STATE_RCD_DONE ; 
 scalar_t__ CH_STATE_STOPPED ; 
 scalar_t__ CH_STATE_UP ; 
 int DEV_STAT_UNIT_CHECK ; 
 int DEV_STAT_UNIT_EXCEP ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned long QETH_CLEAR_CHANNEL_PARM ; 
 size_t QETH_CMD_BUFFER_NO ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 unsigned long QETH_HALT_CHANNEL_PARM ; 
 unsigned long QETH_RCD_PARM ; 
 int SCSW_FCTL_CLEAR_FUNC ; 
 int SCSW_FCTL_HALT_FUNC ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC3 (struct ccw_device*,unsigned long,struct irb*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct irb*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 
 int FUNC10 (struct ccw_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_channel*,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct ccw_device *cdev, unsigned long intparm,
		struct irb *irb)
{
	int rc;
	int cstat, dstat;
	struct qeth_cmd_buffer *buffer;
	struct qeth_channel *channel;
	struct qeth_card *card;
	struct qeth_cmd_buffer *iob;
	__u8 index;

	FUNC2(TRACE, 5, "irq");

	if (FUNC3(cdev, intparm, irb))
		return;
	cstat = irb->scsw.cmd.cstat;
	dstat = irb->scsw.cmd.dstat;

	card = FUNC0(cdev);
	if (!card)
		return;

	if (card->read.ccwdev == cdev) {
		channel = &card->read;
		FUNC2(TRACE, 5, "read");
	} else if (card->write.ccwdev == cdev) {
		channel = &card->write;
		FUNC2(TRACE, 5, "write");
	} else {
		channel = &card->data;
		FUNC2(TRACE, 5, "data");
	}
	FUNC5(&channel->irq_pending, 0);

	if (irb->scsw.cmd.fctl & (SCSW_FCTL_CLEAR_FUNC))
		channel->state = CH_STATE_STOPPED;

	if (irb->scsw.cmd.fctl & (SCSW_FCTL_HALT_FUNC))
		channel->state = CH_STATE_HALTED;

	/*let's wake up immediately on data channel*/
	if ((channel == &card->data) && (intparm != 0) &&
	    (intparm != QETH_RCD_PARM))
		goto out;

	if (intparm == QETH_CLEAR_CHANNEL_PARM) {
		FUNC2(TRACE, 6, "clrchpar");
		/* we don't have to handle this further */
		intparm = 0;
	}
	if (intparm == QETH_HALT_CHANNEL_PARM) {
		FUNC2(TRACE, 6, "hltchpar");
		/* we don't have to handle this further */
		intparm = 0;
	}
	if ((dstat & DEV_STAT_UNIT_EXCEP) ||
	    (dstat & DEV_STAT_UNIT_CHECK) ||
	    (cstat)) {
		if (irb->esw.esw0.erw.cons) {
			FUNC7(&channel->ccwdev->dev,
				"The qeth device driver failed to recover "
				"an error on the device\n");
			FUNC1(2, "%s sense data available. cstat "
				"0x%X dstat 0x%X\n",
				FUNC6(&channel->ccwdev->dev), cstat, dstat);
			FUNC8(KERN_WARNING, "qeth: irb ",
				DUMP_PREFIX_OFFSET, 16, 1, irb, 32, 1);
			FUNC8(KERN_WARNING, "qeth: sense data ",
				DUMP_PREFIX_OFFSET, 16, 1, irb->ecw, 32, 1);
		}
		if (intparm == QETH_RCD_PARM) {
			channel->state = CH_STATE_DOWN;
			goto out;
		}
		rc = FUNC10(cdev, irb);
		if (rc) {
			FUNC9(card);
			FUNC12(card);
			goto out;
		}
	}

	if (intparm == QETH_RCD_PARM) {
		channel->state = CH_STATE_RCD_DONE;
		goto out;
	}
	if (intparm) {
		buffer = (struct qeth_cmd_buffer *) FUNC4((addr_t)intparm);
		buffer->state = BUF_STATE_PROCESSED;
	}
	if (channel == &card->data)
		return;
	if (channel == &card->read &&
	    channel->state == CH_STATE_UP)
		FUNC11(card);

	iob = channel->iob;
	index = channel->buf_no;
	while (iob[index].state == BUF_STATE_PROCESSED) {
		if (iob[index].callback != NULL)
			iob[index].callback(channel, iob + index);

		index = (index + 1) % QETH_CMD_BUFFER_NO;
	}
	channel->buf_no = index;
out:
	FUNC14(&card->wait_q);
	return;
}