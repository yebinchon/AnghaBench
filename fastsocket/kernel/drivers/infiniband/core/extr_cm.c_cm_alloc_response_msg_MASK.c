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
struct ib_mad_send_buf {struct ib_mad_send_buf* ah; } ;
struct TYPE_5__ {int /*<<< orphan*/  grh; } ;
struct ib_mad_recv_wc {TYPE_4__* wc; TYPE_1__ recv_buf; } ;
struct ib_ah {struct ib_ah* ah; } ;
struct cm_port {TYPE_3__* mad_agent; int /*<<< orphan*/  port_num; } ;
struct TYPE_8__ {int /*<<< orphan*/  pkey_index; } ;
struct TYPE_7__ {TYPE_2__* qp; } ;
struct TYPE_6__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_MGMT_MAD_DATA ; 
 int /*<<< orphan*/  IB_MGMT_MAD_HDR ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (struct ib_mad_send_buf*) ; 
 struct ib_mad_send_buf* FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_mad_send_buf* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_send_buf*) ; 

__attribute__((used)) static int FUNC5(struct cm_port *port,
				 struct ib_mad_recv_wc *mad_recv_wc,
				 struct ib_mad_send_buf **msg)
{
	struct ib_mad_send_buf *m;
	struct ib_ah *ah;

	ah = FUNC2(port->mad_agent->qp->pd, mad_recv_wc->wc,
				  mad_recv_wc->recv_buf.grh, port->port_num);
	if (FUNC0(ah))
		return FUNC1(ah);

	m = FUNC3(port->mad_agent, 1, mad_recv_wc->wc->pkey_index,
			       0, IB_MGMT_MAD_HDR, IB_MGMT_MAD_DATA,
			       GFP_ATOMIC);
	if (FUNC0(m)) {
		FUNC4(ah);
		return FUNC1(m);
	}
	m->ah = ah;
	*msg = m;
	return 0;
}