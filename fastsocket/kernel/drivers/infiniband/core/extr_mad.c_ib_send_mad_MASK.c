#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct ib_sge {int /*<<< orphan*/  length; void* addr; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  list; TYPE_4__* mad_queue; } ;
struct TYPE_10__ {unsigned long wr_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  mad; struct ib_mad_agent* mad_agent; } ;
struct ib_mad_send_wr_private {void* payload_mapping; void* header_mapping; TYPE_3__ mad_list; TYPE_5__ send_wr; TYPE_2__ send_buf; struct ib_sge* sg_list; TYPE_1__* mad_agent_priv; } ;
struct TYPE_9__ {scalar_t__ count; scalar_t__ max_active; int /*<<< orphan*/  lock; struct list_head list; } ;
struct ib_mad_qp_info {TYPE_4__ send_queue; struct list_head overflow_list; } ;
struct ib_mad_agent {int /*<<< orphan*/  device; int /*<<< orphan*/  qp; } ;
struct TYPE_6__ {struct ib_mad_qp_info* qp_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_send_wr_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct ib_mad_send_wr_private *mad_send_wr)
{
	struct ib_mad_qp_info *qp_info;
	struct list_head *list;
	struct ib_send_wr *bad_send_wr;
	struct ib_mad_agent *mad_agent;
	struct ib_sge *sge;
	unsigned long flags;
	int ret;

	/* Set WR ID to find mad_send_wr upon completion */
	qp_info = mad_send_wr->mad_agent_priv->qp_info;
	mad_send_wr->send_wr.wr_id = (unsigned long)&mad_send_wr->mad_list;
	mad_send_wr->mad_list.mad_queue = &qp_info->send_queue;

	mad_agent = mad_send_wr->send_buf.mad_agent;
	sge = mad_send_wr->sg_list;
	sge[0].addr = FUNC0(mad_agent->device,
					mad_send_wr->send_buf.mad,
					sge[0].length,
					DMA_TO_DEVICE);
	mad_send_wr->header_mapping = sge[0].addr;

	sge[1].addr = FUNC0(mad_agent->device,
					FUNC2(mad_send_wr),
					sge[1].length,
					DMA_TO_DEVICE);
	mad_send_wr->payload_mapping = sge[1].addr;

	FUNC5(&qp_info->send_queue.lock, flags);
	if (qp_info->send_queue.count < qp_info->send_queue.max_active) {
		ret = FUNC3(mad_agent->qp, &mad_send_wr->send_wr,
				   &bad_send_wr);
		list = &qp_info->send_queue.list;
	} else {
		ret = 0;
		list = &qp_info->overflow_list;
	}

	if (!ret) {
		qp_info->send_queue.count++;
		FUNC4(&mad_send_wr->mad_list.list, list);
	}
	FUNC6(&qp_info->send_queue.lock, flags);
	if (ret) {
		FUNC1(mad_agent->device,
				    mad_send_wr->header_mapping,
				    sge[0].length, DMA_TO_DEVICE);
		FUNC1(mad_agent->device,
				    mad_send_wr->payload_mapping,
				    sge[1].length, DMA_TO_DEVICE);
	}
	return ret;
}