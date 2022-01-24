#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_mad_send_wr_private {int /*<<< orphan*/  send_buf; } ;
struct ib_mad_send_wc {int /*<<< orphan*/ * send_buf; scalar_t__ vendor_err; int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int /*<<< orphan*/  mad; int /*<<< orphan*/  list; } ;
struct ib_mad_recv_wc {TYPE_2__* wc; TYPE_1__ recv_buf; int /*<<< orphan*/  rmpp_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* recv_handler ) (TYPE_3__*,struct ib_mad_recv_wc*) ;scalar_t__ rmpp_version; } ;
struct ib_mad_agent_private {TYPE_3__ agent; int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {unsigned long wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_agent_private*) ; 
 struct ib_mad_send_wr_private* FUNC3 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_mad_send_wr_private*) ; 
 struct ib_mad_recv_wc* FUNC7 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct ib_mad_recv_wc*) ; 

__attribute__((used)) static void FUNC14(struct ib_mad_agent_private *mad_agent_priv,
				 struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_mad_send_wr_private *mad_send_wr;
	struct ib_mad_send_wc mad_send_wc;
	unsigned long flags;

	FUNC0(&mad_recv_wc->rmpp_list);
	FUNC9(&mad_recv_wc->recv_buf.list, &mad_recv_wc->rmpp_list);
	if (mad_agent_priv->agent.rmpp_version) {
		mad_recv_wc = FUNC7(mad_agent_priv,
						      mad_recv_wc);
		if (!mad_recv_wc) {
			FUNC2(mad_agent_priv);
			return;
		}
	}

	/* Complete corresponding request */
	if (FUNC8(mad_recv_wc->recv_buf.mad)) {
		FUNC10(&mad_agent_priv->lock, flags);
		mad_send_wr = FUNC3(mad_agent_priv, mad_recv_wc);
		if (!mad_send_wr) {
			FUNC11(&mad_agent_priv->lock, flags);
			FUNC4(mad_recv_wc);
			FUNC2(mad_agent_priv);
			return;
		}
		FUNC6(mad_send_wr);
		FUNC11(&mad_agent_priv->lock, flags);

		/* Defined behavior is to complete response before request */
		mad_recv_wc->wc->wr_id = (unsigned long) &mad_send_wr->send_buf;
		mad_agent_priv->agent.recv_handler(&mad_agent_priv->agent,
						   mad_recv_wc);
		FUNC1(&mad_agent_priv->refcount);

		mad_send_wc.status = IB_WC_SUCCESS;
		mad_send_wc.vendor_err = 0;
		mad_send_wc.send_buf = &mad_send_wr->send_buf;
		FUNC5(mad_send_wr, &mad_send_wc);
	} else {
		mad_agent_priv->agent.recv_handler(&mad_agent_priv->agent,
						   mad_recv_wc);
		FUNC2(mad_agent_priv);
	}
}