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
struct ipoib_neigh {int /*<<< orphan*/ * cm; } ;
struct TYPE_2__ {int /*<<< orphan*/  reap_task; int /*<<< orphan*/  reap_list; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; TYPE_1__ cm; struct net_device* dev; } ;
struct ipoib_cm_tx {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; struct ipoib_neigh* neigh; int /*<<< orphan*/  dev; } ;
struct ib_cm_id {struct ipoib_cm_tx* context; } ;
struct ib_cm_event {int event; } ;

/* Variables and functions */
#define  IB_CM_DREQ_RECEIVED 132 
 int /*<<< orphan*/  IB_CM_REJ_CONSUMER_DEFINED ; 
#define  IB_CM_REJ_RECEIVED 131 
#define  IB_CM_REP_RECEIVED 130 
#define  IB_CM_REQ_ERROR 129 
#define  IB_CM_TIMEWAIT_EXIT 128 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct ib_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_cm_id*,struct ib_cm_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_neigh*) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ib_cm_id *cm_id,
			       struct ib_cm_event *event)
{
	struct ipoib_cm_tx *tx = cm_id->context;
	struct ipoib_dev_priv *priv = FUNC6(tx->dev);
	struct net_device *dev = priv->dev;
	struct ipoib_neigh *neigh;
	unsigned long flags;
	int ret;

	switch (event->event) {
	case IB_CM_DREQ_RECEIVED:
		FUNC3(priv, "DREQ received.\n");
		FUNC0(cm_id, NULL, 0);
		break;
	case IB_CM_REP_RECEIVED:
		FUNC3(priv, "REP received.\n");
		ret = FUNC2(cm_id, event);
		if (ret)
			FUNC1(cm_id, IB_CM_REJ_CONSUMER_DEFINED,
				       NULL, 0, NULL, 0);
		break;
	case IB_CM_REQ_ERROR:
	case IB_CM_REJ_RECEIVED:
	case IB_CM_TIMEWAIT_EXIT:
		FUNC3(priv, "CM error %d.\n", event->event);
		FUNC7(dev);
		FUNC10(&priv->lock, flags);
		neigh = tx->neigh;

		if (neigh) {
			neigh->cm = NULL;
			FUNC4(neigh);

			tx->neigh = NULL;
		}

		if (FUNC12(IPOIB_FLAG_INITIALIZED, &tx->flags)) {
			FUNC5(&tx->list, &priv->cm.reap_list);
			FUNC9(ipoib_workqueue, &priv->cm.reap_task);
		}

		FUNC11(&priv->lock, flags);
		FUNC8(dev);
		break;
	default:
		break;
	}

	return 0;
}