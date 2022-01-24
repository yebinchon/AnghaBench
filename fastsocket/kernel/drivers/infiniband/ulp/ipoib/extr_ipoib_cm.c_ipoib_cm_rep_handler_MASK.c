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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; } ;
struct ipoib_cm_tx {scalar_t__ mtu; int /*<<< orphan*/  dev; TYPE_1__* neigh; int /*<<< orphan*/  flags; int /*<<< orphan*/  qp; } ;
struct ipoib_cm_data {int /*<<< orphan*/  mtu; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; scalar_t__ rq_psn; } ;
struct ib_cm_id {struct ipoib_cm_tx* context; } ;
struct ib_cm_event {struct ipoib_cm_data* private_data; } ;
struct TYPE_2__ {struct sk_buff_head queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IB_QPS_RTR ; 
 int /*<<< orphan*/  IB_QPS_RTS ; 
 scalar_t__ IPOIB_ENCAP_LEN ; 
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct ib_cm_id*,struct ib_qp_attr*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ib_qp_attr*,int) ; 
 int FUNC6 (struct ib_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*,...) ; 
 struct ipoib_dev_priv* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ib_cm_id *cm_id, struct ib_cm_event *event)
{
	struct ipoib_cm_tx *p = cm_id->context;
	struct ipoib_dev_priv *priv = FUNC8(p->dev);
	struct ipoib_cm_data *data = event->private_data;
	struct sk_buff_head skqueue;
	struct ib_qp_attr qp_attr;
	int qp_attr_mask, ret;
	struct sk_buff *skb;

	p->mtu = FUNC2(data->mtu);

	if (p->mtu <= IPOIB_ENCAP_LEN) {
		FUNC7(priv, "Rejecting connection: mtu %d <= %d\n",
			   p->mtu, IPOIB_ENCAP_LEN);
		return -EINVAL;
	}

	qp_attr.qp_state = IB_QPS_RTR;
	ret = FUNC4(cm_id, &qp_attr, &qp_attr_mask);
	if (ret) {
		FUNC7(priv, "failed to init QP attr for RTR: %d\n", ret);
		return ret;
	}

	qp_attr.rq_psn = 0 /* FIXME */;
	ret = FUNC5(p->qp, &qp_attr, qp_attr_mask);
	if (ret) {
		FUNC7(priv, "failed to modify QP to RTR: %d\n", ret);
		return ret;
	}

	qp_attr.qp_state = IB_QPS_RTS;
	ret = FUNC4(cm_id, &qp_attr, &qp_attr_mask);
	if (ret) {
		FUNC7(priv, "failed to init QP attr for RTS: %d\n", ret);
		return ret;
	}
	ret = FUNC5(p->qp, &qp_attr, qp_attr_mask);
	if (ret) {
		FUNC7(priv, "failed to modify QP to RTS: %d\n", ret);
		return ret;
	}

	FUNC10(&skqueue);

	FUNC11(&priv->lock);
	FUNC9(IPOIB_FLAG_OPER_UP, &p->flags);
	if (p->neigh)
		while ((skb = FUNC0(&p->neigh->queue)))
			FUNC1(&skqueue, skb);
	FUNC12(&priv->lock);

	while ((skb = FUNC0(&skqueue))) {
		skb->dev = p->dev;
		if (FUNC3(skb))
			FUNC7(priv, "dev_queue_xmit failed "
				   "to requeue packet\n");
	}

	ret = FUNC6(cm_id, NULL, 0);
	if (ret) {
		FUNC7(priv, "failed to send RTU: %d\n", ret);
		return ret;
	}
	return 0;
}