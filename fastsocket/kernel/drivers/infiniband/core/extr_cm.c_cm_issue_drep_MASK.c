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
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct TYPE_3__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct cm_port {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tid; } ;
struct cm_dreq_msg {int /*<<< orphan*/  remote_comm_id; int /*<<< orphan*/  local_comm_id; TYPE_2__ hdr; } ;
struct cm_drep_msg {int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_DREP_ATTR_ID ; 
 int FUNC0 (struct cm_port*,struct ib_mad_recv_wc*,struct ib_mad_send_buf**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_send_buf*) ; 
 int FUNC3 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cm_port *port,
			 struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_mad_send_buf *msg = NULL;
	struct cm_dreq_msg *dreq_msg;
	struct cm_drep_msg *drep_msg;
	int ret;

	ret = FUNC0(port, mad_recv_wc, &msg);
	if (ret)
		return ret;

	dreq_msg = (struct cm_dreq_msg *) mad_recv_wc->recv_buf.mad;
	drep_msg = (struct cm_drep_msg *) msg->mad;

	FUNC1(&drep_msg->hdr, CM_DREP_ATTR_ID, dreq_msg->hdr.tid);
	drep_msg->remote_comm_id = dreq_msg->local_comm_id;
	drep_msg->local_comm_id = dreq_msg->remote_comm_id;

	ret = FUNC3(msg, NULL);
	if (ret)
		FUNC2(msg);

	return ret;
}