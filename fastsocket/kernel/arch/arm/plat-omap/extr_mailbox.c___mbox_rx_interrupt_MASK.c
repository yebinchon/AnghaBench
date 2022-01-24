#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct omap_mbox {TYPE_2__* rxq; TYPE_1__* ops; int /*<<< orphan*/  (* err_notify ) () ;} ;
typedef  scalar_t__ mbox_msg_t ;
struct TYPE_4__ {int /*<<< orphan*/  work; struct request_queue* queue; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IRQ_RX ; 
 scalar_t__ OMAP_MBOX_TYPE1 ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_mbox*) ; 
 scalar_t__ FUNC6 (struct omap_mbox*) ; 
 int FUNC7 (struct omap_mbox*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct omap_mbox *mbox)
{
	struct request *rq;
	mbox_msg_t msg;
	struct request_queue *q = mbox->rxq->queue;

	FUNC3(mbox, IRQ_RX);

	while (!FUNC5(mbox)) {
		rq = FUNC1(q, WRITE, GFP_ATOMIC);
		if (FUNC11(!rq))
			goto nomem;

		msg = FUNC6(mbox);

		if (FUNC11(FUNC7(mbox, msg))) {
			FUNC8("mbox: Illegal seq bit!(%08x)\n", msg);
			if (mbox->err_notify)
				mbox->err_notify();
		}

		FUNC2(q, rq, 0, (void *)msg);
		if (mbox->ops->type == OMAP_MBOX_TYPE1)
			break;
	}

	/* no more messages in the fifo. clear IRQ source. */
	FUNC0(mbox, IRQ_RX);
	FUNC4(mbox, IRQ_RX);
nomem:
	FUNC9(&mbox->rxq->work);
}