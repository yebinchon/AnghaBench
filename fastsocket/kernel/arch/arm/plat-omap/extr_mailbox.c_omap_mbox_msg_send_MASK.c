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
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  end_io; } ;
struct omap_msg_tx_data {void* arg; int /*<<< orphan*/  msg; } ;
struct omap_mbox {TYPE_1__* txq; } ;
typedef  int /*<<< orphan*/  mbox_msg_t ;
struct TYPE_2__ {int /*<<< orphan*/  work; struct request_queue* queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  WRITE ; 
 struct request* FUNC0 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*,int /*<<< orphan*/ ,struct omap_msg_tx_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_msg_tx_data*) ; 
 struct omap_msg_tx_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_msg_tx_end_io ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct omap_mbox *mbox, mbox_msg_t msg, void* arg)
{
	struct omap_msg_tx_data *tx_data;
	struct request *rq;
	struct request_queue *q = mbox->txq->queue;

	tx_data = FUNC3(sizeof(*tx_data), GFP_ATOMIC);
	if (FUNC5(!tx_data))
		return -ENOMEM;

	rq = FUNC0(q, WRITE, GFP_ATOMIC);
	if (FUNC5(!rq)) {
		FUNC2(tx_data);
		return -ENOMEM;
	}

	tx_data->msg = msg;
	tx_data->arg = arg;
	rq->end_io = omap_msg_tx_end_io;
	FUNC1(q, rq, 0, tx_data);

	FUNC4(&mbox->txq->work);
	return 0;
}