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
struct net_device {scalar_t__ state; int /*<<< orphan*/  qp; int /*<<< orphan*/  list; void* jiffies; struct ib_cm_id* id; struct net_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  passive_ids; int /*<<< orphan*/  stale_task; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; TYPE_1__ cm; } ;
struct ipoib_cm_rx {scalar_t__ state; int /*<<< orphan*/  qp; int /*<<< orphan*/  list; void* jiffies; struct ib_cm_id* id; struct ipoib_cm_rx* dev; } ;
struct ib_cm_id {struct net_device* context; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_rcvd; } ;
struct ib_cm_event {TYPE_2__ param; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPOIB_CM_RX_DELAY ; 
 scalar_t__ IPOIB_CM_RX_LIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  ipoib_cm_err_attr ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,struct ib_cm_id*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct net_device*,struct ib_cm_id*,struct net_device*) ; 
 int FUNC9 (struct net_device*,struct ib_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 struct net_device* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct ib_cm_id *cm_id, struct ib_cm_event *event)
{
	struct net_device *dev = cm_id->context;
	struct ipoib_dev_priv *priv = FUNC15(dev);
	struct ipoib_cm_rx *p;
	unsigned psn;
	int ret;

	FUNC10(priv, "REQ arrived\n");
	p = FUNC13(sizeof *p, GFP_KERNEL);
	if (!p)
		return -ENOMEM;
	p->dev = dev;
	p->id = cm_id;
	cm_id->context = p;
	p->state = IPOIB_CM_RX_LIVE;
	p->jiffies = jiffies;
	FUNC0(&p->list);

	p->qp = FUNC5(dev, p);
	if (FUNC1(p->qp)) {
		ret = FUNC2(p->qp);
		goto err_qp;
	}

	psn = FUNC17() & 0xffffff;
	ret = FUNC7(dev, cm_id, p->qp, psn);
	if (ret)
		goto err_modify;

	if (!FUNC6(dev)) {
		ret = FUNC8(dev, cm_id, p);
		if (ret)
			goto err_modify;
	}

	FUNC18(&priv->lock);
	FUNC16(ipoib_workqueue,
			   &priv->cm.stale_task, IPOIB_CM_RX_DELAY);
	/* Add this entry to passive ids list head, but do not re-add it
	 * if IB_EVENT_QP_LAST_WQE_REACHED has moved it to flush list. */
	p->jiffies = jiffies;
	if (p->state == IPOIB_CM_RX_LIVE)
		FUNC14(&p->list, &priv->cm.passive_ids);
	FUNC19(&priv->lock);

	ret = FUNC9(dev, cm_id, p->qp, &event->param.req_rcvd, psn);
	if (ret) {
		FUNC11(priv, "failed to send REP: %d\n", ret);
		if (FUNC4(p->qp, &ipoib_cm_err_attr, IB_QP_STATE))
			FUNC11(priv, "unable to move qp to error state\n");
	}
	return 0;

err_modify:
	FUNC3(p->qp);
err_qp:
	FUNC12(p);
	return ret;
}