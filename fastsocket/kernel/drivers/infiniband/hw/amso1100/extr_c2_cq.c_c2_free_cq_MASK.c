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
typedef  int /*<<< orphan*/  wr ;
typedef  union c2wr {int dummy; } c2wr ;
struct TYPE_3__ {unsigned long context; } ;
struct c2wr_cq_destroy_req {int /*<<< orphan*/  cq_handle; int /*<<< orphan*/  rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_cq_destroy_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** qptr_array; } ;
struct TYPE_4__ {size_t index; } ;
struct c2_cq {TYPE_2__ mq; scalar_t__ is_kernel; int /*<<< orphan*/  adapter_handle; int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWR_CQ_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct c2_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct c2wr_cq_destroy_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c2wr_cq_destroy_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct c2_dev*,struct c2wr_cq_destroy_rep*) ; 
 struct c2_vq_req* FUNC9 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC13 (struct c2_dev*,union c2wr*) ; 
 int FUNC14 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

void FUNC16(struct c2_dev *c2dev, struct c2_cq *cq)
{
	int err;
	struct c2_vq_req *vq_req;
	struct c2wr_cq_destroy_req wr;
	struct c2wr_cq_destroy_rep *reply;

	FUNC5();

	/* Clear CQ from the qptr array */
	FUNC6(&c2dev->lock);
	c2dev->qptr_array[cq->mq.index] = NULL;
	FUNC0(&cq->refcount);
	FUNC7(&c2dev->lock);

	FUNC15(cq->wait, !FUNC1(&cq->refcount));

	vq_req = FUNC9(c2dev);
	if (!vq_req) {
		goto bail0;
	}

	FUNC4(&wr, 0, sizeof(wr));
	FUNC3(&wr, CCWR_CQ_DESTROY);
	wr.hdr.context = (unsigned long) vq_req;
	wr.rnic_handle = c2dev->adapter_handle;
	wr.cq_handle = cq->adapter_handle;

	FUNC11(c2dev, vq_req);

	err = FUNC13(c2dev, (union c2wr *) & wr);
	if (err) {
		FUNC12(c2dev, vq_req);
		goto bail1;
	}

	err = FUNC14(c2dev, vq_req);
	if (err)
		goto bail1;

	reply = (struct c2wr_cq_destroy_rep *) (unsigned long) (vq_req->reply_msg);
	if (reply)
		FUNC8(c2dev, reply);
      bail1:
	FUNC10(c2dev, vq_req);
      bail0:
	if (cq->is_kernel) {
		FUNC2(c2dev, &cq->mq);
	}

	return;
}