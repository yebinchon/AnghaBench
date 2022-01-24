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
struct TYPE_2__ {int /*<<< orphan*/  rx_flush_list; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; TYPE_1__ cm; } ;
struct ipoib_cm_rx {int /*<<< orphan*/  state; int /*<<< orphan*/  list; int /*<<< orphan*/  dev; } ;
struct ib_event {scalar_t__ event; } ;

/* Variables and functions */
 scalar_t__ IB_EVENT_QP_LAST_WQE_REACHED ; 
 int /*<<< orphan*/  IPOIB_CM_RX_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ib_event *event, void *ctx)
{
	struct ipoib_cm_rx *p = ctx;
	struct ipoib_dev_priv *priv = FUNC2(p->dev);
	unsigned long flags;

	if (event->event != IB_EVENT_QP_LAST_WQE_REACHED)
		return;

	FUNC3(&priv->lock, flags);
	FUNC1(&p->list, &priv->cm.rx_flush_list);
	p->state = IPOIB_CM_RX_FLUSH;
	FUNC0(priv);
	FUNC4(&priv->lock, flags);
}