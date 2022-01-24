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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* qp; } ;
struct ipoib_cm_data {void* mtu; void* qpn; } ;
struct ib_qp {int /*<<< orphan*/  qp_num; } ;
struct ib_cm_req_event_param {int /*<<< orphan*/  rnr_retry_count; } ;
struct ib_cm_rep_param {int private_data_len; unsigned int starting_psn; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  srq; int /*<<< orphan*/  rnr_retry_count; scalar_t__ flow_control; struct ipoib_cm_data* private_data; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_CM_BUF_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_cm_id*,struct ib_cm_rep_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ib_cm_id *cm_id,
			     struct ib_qp *qp, struct ib_cm_req_event_param *req,
			     unsigned psn)
{
	struct ipoib_dev_priv *priv = FUNC3(dev);
	struct ipoib_cm_data data = {};
	struct ib_cm_rep_param rep = {};

	data.qpn = FUNC0(priv->qp->qp_num);
	data.mtu = FUNC0(IPOIB_CM_BUF_SIZE);

	rep.private_data = &data;
	rep.private_data_len = sizeof data;
	rep.flow_control = 0;
	rep.rnr_retry_count = req->rnr_retry_count;
	rep.srq = FUNC2(dev);
	rep.qp_num = qp->qp_num;
	rep.starting_psn = psn;
	return FUNC1(cm_id, &rep);
}