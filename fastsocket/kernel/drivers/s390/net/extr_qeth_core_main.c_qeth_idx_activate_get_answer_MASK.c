#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qeth_cmd_buffer {void (* callback ) (struct qeth_channel*,struct qeth_cmd_buffer*) ;int /*<<< orphan*/  data; } ;
struct TYPE_3__ {scalar_t__ cda; int /*<<< orphan*/  count; } ;
struct qeth_channel {scalar_t__ state; int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  ccwdev; TYPE_1__ ccw; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; } ;
struct ccw1 {int dummy; } ;
typedef  int /*<<< orphan*/  addr_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 struct qeth_card* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CH_STATE_UP ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  QETH_BUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_TIMEOUT ; 
 int /*<<< orphan*/  READ_CCW ; 
 int /*<<< orphan*/  SETUP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_channel*) ; 
 struct qeth_cmd_buffer* FUNC11 (struct qeth_channel*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct qeth_channel *channel,
		void (*idx_reply_cb)(struct qeth_channel *,
			struct qeth_cmd_buffer *))
{
	struct qeth_cmd_buffer *iob;
	unsigned long flags;
	int rc;
	struct qeth_card *card;

	FUNC2(SETUP, 2, "idxanswr");
	card = FUNC0(channel->ccwdev);
	iob = FUNC11(channel);
	iob->callback = idx_reply_cb;
	FUNC9(&channel->ccw, READ_CCW, sizeof(struct ccw1));
	channel->ccw.count = QETH_BUFSIZE;
	channel->ccw.cda = (__u32) FUNC4(iob->data);

	FUNC14(card->wait_q,
		   FUNC5(&channel->irq_pending, 0, 1) == 0);
	FUNC2(SETUP, 6, "noirqpnd");
	FUNC12(FUNC8(channel->ccwdev), flags);
	rc = FUNC7(channel->ccwdev,
			      &channel->ccw, (addr_t) iob, 0, 0);
	FUNC13(FUNC8(channel->ccwdev), flags);

	if (rc) {
		FUNC1(2, "Error2 in activating channel rc=%d\n", rc);
		FUNC3(SETUP, 2, "2err%d", rc);
		FUNC6(&channel->irq_pending, 0);
		FUNC16(&card->wait_q);
		return rc;
	}
	rc = FUNC15(card->wait_q,
			 channel->state == CH_STATE_UP, QETH_TIMEOUT);
	if (rc == -ERESTARTSYS)
		return rc;
	if (channel->state != CH_STATE_UP) {
		rc = -ETIME;
		FUNC3(SETUP, 2, "3err%d", rc);
		FUNC10(channel);
	} else
		rc = 0;
	return rc;
}