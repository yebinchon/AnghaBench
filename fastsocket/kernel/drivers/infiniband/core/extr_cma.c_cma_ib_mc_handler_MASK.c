#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int (* event_handler ) (TYPE_3__*,struct rdma_cm_event*) ;int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; scalar_t__ qp; } ;
struct rdma_id_private {int /*<<< orphan*/  handler_mutex; TYPE_3__ id; int /*<<< orphan*/  qp_mutex; } ;
struct TYPE_6__ {int qp_num; int /*<<< orphan*/  qkey; int /*<<< orphan*/  ah_attr; int /*<<< orphan*/  private_data; } ;
struct TYPE_7__ {TYPE_1__ ud; } ;
struct rdma_cm_event {int status; int /*<<< orphan*/  event; TYPE_2__ param; } ;
struct TYPE_9__ {int /*<<< orphan*/  qkey; int /*<<< orphan*/  mlid; int /*<<< orphan*/  mgid; } ;
struct ib_sa_multicast {TYPE_5__ rec; struct cma_multicast* context; } ;
struct cma_multicast {int /*<<< orphan*/  context; struct rdma_id_private* id_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_CM_ADDR_BOUND ; 
 int /*<<< orphan*/  RDMA_CM_ADDR_RESOLVED ; 
 int /*<<< orphan*/  RDMA_CM_DESTROYING ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_MULTICAST_ERROR ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_MULTICAST_JOIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*,struct rdma_cm_event*) ; 

__attribute__((used)) static int FUNC12(int status, struct ib_sa_multicast *multicast)
{
	struct rdma_id_private *id_priv;
	struct cma_multicast *mc = multicast->context;
	struct rdma_cm_event event;
	int ret;

	id_priv = mc->id_priv;
	if (FUNC2(id_priv, RDMA_CM_ADDR_BOUND) &&
	    FUNC2(id_priv, RDMA_CM_ADDR_RESOLVED))
		return 0;

	if (!status)
		status = FUNC4(id_priv, FUNC1(multicast->rec.qkey));
	FUNC8(&id_priv->qp_mutex);
	if (!status && id_priv->id.qp)
		status = FUNC5(id_priv->id.qp, &multicast->rec.mgid,
					 FUNC0(multicast->rec.mlid));
	FUNC9(&id_priv->qp_mutex);

	FUNC7(&event, 0, sizeof event);
	event.status = status;
	event.param.ud.private_data = mc->context;
	if (!status) {
		event.event = RDMA_CM_EVENT_MULTICAST_JOIN;
		FUNC6(id_priv->id.device,
					 id_priv->id.port_num, &multicast->rec,
					 &event.param.ud.ah_attr);
		event.param.ud.qp_num = 0xFFFFFF;
		event.param.ud.qkey = FUNC1(multicast->rec.qkey);
	} else
		event.event = RDMA_CM_EVENT_MULTICAST_ERROR;

	ret = id_priv->id.event_handler(&id_priv->id, &event);
	if (ret) {
		FUNC3(id_priv, RDMA_CM_DESTROYING);
		FUNC9(&id_priv->handler_mutex);
		FUNC10(&id_priv->id);
		return 0;
	}

	FUNC9(&id_priv->handler_mutex);
	return 0;
}