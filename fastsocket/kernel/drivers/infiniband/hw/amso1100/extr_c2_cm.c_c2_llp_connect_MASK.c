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
typedef  union c2wr {int dummy; } c2wr ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; } ;
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;struct c2_qp* provider_data; TYPE_4__ remote_addr; int /*<<< orphan*/  (* add_ref ) (struct iw_cm_id*) ;int /*<<< orphan*/  device; } ;
struct iw_cm_conn_param {int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; int /*<<< orphan*/  ird; int /*<<< orphan*/  ord; int /*<<< orphan*/  qpn; } ;
struct ib_qp {int dummy; } ;
struct TYPE_6__ {scalar_t__ context; } ;
struct c2wr_qp_connect_req {scalar_t__ private_data_length; int /*<<< orphan*/ * private_data; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  qp_handle; int /*<<< orphan*/  rnic_handle; TYPE_2__ hdr; } ;
struct c2_vq_req {int dummy; } ;
struct c2_qp {struct iw_cm_id* cm_id; int /*<<< orphan*/  adapter_handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  msg_size; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; TYPE_1__ req_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  C2_MAX_PRIVATE_DATA_SIZE ; 
 int /*<<< orphan*/  CCWR_QP_CONNECT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ib_qp* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct c2_dev*,struct c2_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c2wr_qp_connect_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c2wr_qp_connect_req*) ; 
 struct c2wr_qp_connect_req* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iw_cm_id*) ; 
 int /*<<< orphan*/  FUNC8 (struct iw_cm_id*) ; 
 struct c2_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct c2_qp* FUNC10 (struct ib_qp*) ; 
 struct c2_vq_req* FUNC11 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC13 (struct c2_dev*,union c2wr*) ; 

int FUNC14(struct iw_cm_id *cm_id, struct iw_cm_conn_param *iw_param)
{
	struct c2_dev *c2dev = FUNC9(cm_id->device);
	struct ib_qp *ibqp;
	struct c2_qp *qp;
	struct c2wr_qp_connect_req *wr;	/* variable size needs a malloc. */
	struct c2_vq_req *vq_req;
	int err;

	ibqp = FUNC0(cm_id->device, iw_param->qpn);
	if (!ibqp)
		return -EINVAL;
	qp = FUNC10(ibqp);

	/* Associate QP <--> CM_ID */
	cm_id->provider_data = qp;
	cm_id->add_ref(cm_id);
	qp->cm_id = cm_id;

	/*
	 * only support the max private_data length
	 */
	if (iw_param->private_data_len > C2_MAX_PRIVATE_DATA_SIZE) {
		err = -EINVAL;
		goto bail0;
	}
	/*
	 * Set the rdma read limits
	 */
	err = FUNC1(c2dev, qp, iw_param->ord, iw_param->ird);
	if (err)
		goto bail0;

	/*
	 * Create and send a WR_QP_CONNECT...
	 */
	wr = FUNC5(c2dev->req_vq.msg_size, GFP_KERNEL);
	if (!wr) {
		err = -ENOMEM;
		goto bail0;
	}

	vq_req = FUNC11(c2dev);
	if (!vq_req) {
		err = -ENOMEM;
		goto bail1;
	}

	FUNC2(wr, CCWR_QP_CONNECT);
	wr->hdr.context = 0;
	wr->rnic_handle = c2dev->adapter_handle;
	wr->qp_handle = qp->adapter_handle;

	wr->remote_addr = cm_id->remote_addr.sin_addr.s_addr;
	wr->remote_port = cm_id->remote_addr.sin_port;

	/*
	 * Move any private data from the callers's buf into
	 * the WR.
	 */
	if (iw_param->private_data) {
		wr->private_data_length =
			FUNC3(iw_param->private_data_len);
		FUNC6(&wr->private_data[0], iw_param->private_data,
		       iw_param->private_data_len);
	} else
		wr->private_data_length = 0;

	/*
	 * Send WR to adapter.  NOTE: There is no synch reply from
	 * the adapter.
	 */
	err = FUNC13(c2dev, (union c2wr *) wr);
	FUNC12(c2dev, vq_req);

 bail1:
	FUNC4(wr);
 bail0:
	if (err) {
		/*
		 * If we fail, release reference on QP and
		 * disassociate QP from CM_ID
		 */
		cm_id->provider_data = NULL;
		qp->cm_id = NULL;
		cm_id->rem_ref(cm_id);
	}
	return err;
}