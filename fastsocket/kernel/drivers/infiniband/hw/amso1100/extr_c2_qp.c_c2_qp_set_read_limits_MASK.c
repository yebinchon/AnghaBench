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
typedef  union c2wr {int dummy; } c2wr ;
struct TYPE_2__ {unsigned long context; } ;
struct c2wr_qp_modify_req {void* next_qp_state; void* rq_depth; void* sq_depth; void* ird; void* ord; int /*<<< orphan*/  qp_handle; int /*<<< orphan*/  rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_qp_modify_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_qp {int /*<<< orphan*/  adapter_handle; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; } ;

/* Variables and functions */
 int C2_QP_NO_ATTR_CHANGE ; 
 int /*<<< orphan*/  CCWR_QP_MODIFY ; 
 int ENOMEM ; 
 int FUNC0 (struct c2wr_qp_modify_rep*) ; 
 int /*<<< orphan*/  FUNC1 (struct c2wr_qp_modify_req*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct c2_dev*,struct c2wr_qp_modify_rep*) ; 
 struct c2_vq_req* FUNC4 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC8 (struct c2_dev*,union c2wr*) ; 
 int FUNC9 (struct c2_dev*,struct c2_vq_req*) ; 

int FUNC10(struct c2_dev *c2dev, struct c2_qp *qp,
			  int ord, int ird)
{
	struct c2wr_qp_modify_req wr;
	struct c2wr_qp_modify_rep *reply;
	struct c2_vq_req *vq_req;
	int err;

	vq_req = FUNC4(c2dev);
	if (!vq_req)
		return -ENOMEM;

	FUNC1(&wr, CCWR_QP_MODIFY);
	wr.hdr.context = (unsigned long) vq_req;
	wr.rnic_handle = c2dev->adapter_handle;
	wr.qp_handle = qp->adapter_handle;
	wr.ord = FUNC2(ord);
	wr.ird = FUNC2(ird);
	wr.sq_depth = FUNC2(C2_QP_NO_ATTR_CHANGE);
	wr.rq_depth = FUNC2(C2_QP_NO_ATTR_CHANGE);
	wr.next_qp_state = FUNC2(C2_QP_NO_ATTR_CHANGE);

	/* reference the request struct */
	FUNC6(c2dev, vq_req);

	err = FUNC8(c2dev, (union c2wr *) & wr);
	if (err) {
		FUNC7(c2dev, vq_req);
		goto bail0;
	}

	err = FUNC9(c2dev, vq_req);
	if (err)
		goto bail0;

	reply = (struct c2wr_qp_modify_rep *) (unsigned long)
		vq_req->reply_msg;
	if (!reply) {
		err = -ENOMEM;
		goto bail0;
	}

	err = FUNC0(reply);
	FUNC3(c2dev, reply);
      bail0:
	FUNC5(c2dev, vq_req);
	return err;
}