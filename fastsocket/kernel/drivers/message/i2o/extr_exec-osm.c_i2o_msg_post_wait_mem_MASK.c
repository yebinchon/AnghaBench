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
typedef  int u32 ;
struct TYPE_5__ {void* tcntxt; void* icntxt; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct i2o_message {TYPE_2__ u; } ;
struct i2o_dma {int /*<<< orphan*/ * virt; } ;
struct i2o_exec_wait {int /*<<< orphan*/  m; int /*<<< orphan*/  lock; TYPE_3__* msg; scalar_t__ complete; int /*<<< orphan*/ * wq; int /*<<< orphan*/  list; int /*<<< orphan*/  tcntxt; struct i2o_dma dma; } ;
struct i2o_controller {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  context; } ;
struct TYPE_7__ {int /*<<< orphan*/ * body; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 unsigned long HZ ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__ i2o_exec_driver ; 
 struct i2o_exec_wait* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct i2o_exec_wait*) ; 
 int /*<<< orphan*/  i2o_exec_wait_list ; 
 int /*<<< orphan*/  FUNC4 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2o_controller*,struct i2o_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2o_controller*,struct i2o_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  wq ; 

int FUNC12(struct i2o_controller *c, struct i2o_message *msg,
			  unsigned long timeout, struct i2o_dma *dma)
{
	FUNC0(wq);
	struct i2o_exec_wait *wait;
	static u32 tcntxt = 0x80000000;
	unsigned long flags;
	int rc = 0;

	wait = FUNC2();
	if (!wait) {
		FUNC5(c, msg);
		return -ENOMEM;
	}

	if (tcntxt == 0xffffffff)
		tcntxt = 0x80000000;

	if (dma)
		wait->dma = *dma;

	/*
	 * Fill in the message initiator context and transaction context.
	 * We will only use transaction contexts >= 0x80000000 for POST WAIT,
	 * so we could find a POST WAIT reply easier in the reply handler.
	 */
	msg->u.s.icntxt = FUNC1(i2o_exec_driver.context);
	wait->tcntxt = tcntxt++;
	msg->u.s.tcntxt = FUNC1(wait->tcntxt);

	wait->wq = &wq;
	/*
	 * we add elements to the head, because if a entry in the list will
	 * never be removed, we have to iterate over it every time
	 */
	FUNC8(&wait->list, &i2o_exec_wait_list);

	/*
	 * Post the message to the controller. At some point later it will
	 * return. If we time out before it returns then complete will be zero.
	 */
	FUNC6(c, msg);

	FUNC11(wq, wait->complete, timeout * HZ);

	FUNC9(&wait->lock, flags);

	wait->wq = NULL;

	if (wait->complete)
		rc = FUNC7(wait->msg->body[0]) >> 24;
	else {
		/*
		 * We cannot remove it now. This is important. When it does
		 * terminate (which it must do if the controller has not
		 * died...) then it will otherwise scribble on stuff.
		 *
		 * FIXME: try abort message
		 */
		if (dma)
			dma->virt = NULL;

		rc = -ETIMEDOUT;
	}

	FUNC10(&wait->lock, flags);

	if (rc != -ETIMEDOUT) {
		FUNC4(c, wait->m);
		FUNC3(wait);
	}

	return rc;
}