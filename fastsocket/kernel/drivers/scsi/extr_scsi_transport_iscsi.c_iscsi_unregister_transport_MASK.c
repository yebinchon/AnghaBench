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
struct iscsi_transport {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_attrs; } ;
struct iscsi_internal {TYPE_2__ dev; TYPE_1__ t; int /*<<< orphan*/  session_cont; int /*<<< orphan*/  conn_cont; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct iscsi_internal* FUNC2 (struct iscsi_transport*) ; 
 int /*<<< orphan*/  iscsi_transport_group ; 
 int /*<<< orphan*/  iscsi_transport_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_queue_mutex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct iscsi_transport *tt)
{
	struct iscsi_internal *priv;
	unsigned long flags;

	FUNC0(!tt);

	FUNC4(&rx_queue_mutex);

	priv = FUNC2(tt);
	FUNC0 (!priv);

	FUNC6(&iscsi_transport_lock, flags);
	FUNC3(&priv->list);
	FUNC7(&iscsi_transport_lock, flags);

	FUNC9(&priv->conn_cont);
	FUNC9(&priv->session_cont);
	FUNC9(&priv->t.host_attrs);

	FUNC8(&priv->dev.kobj, &iscsi_transport_group);
	FUNC1(&priv->dev);
	FUNC5(&rx_queue_mutex);

	return 0;
}