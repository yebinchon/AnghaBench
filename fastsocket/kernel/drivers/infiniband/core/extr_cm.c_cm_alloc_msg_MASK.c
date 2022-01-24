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
struct ib_mad_send_buf {struct cm_id_private** context; int /*<<< orphan*/  retries; struct ib_mad_send_buf* ah; } ;
struct ib_mad_agent {TYPE_2__* qp; } ;
struct ib_ah {struct cm_id_private** context; int /*<<< orphan*/  retries; struct ib_ah* ah; } ;
struct TYPE_8__ {int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  ah_attr; TYPE_1__* port; } ;
struct TYPE_7__ {int /*<<< orphan*/  remote_cm_qpn; } ;
struct cm_id_private {int /*<<< orphan*/  refcount; int /*<<< orphan*/  max_cm_retries; TYPE_4__ av; TYPE_3__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/  pd; } ;
struct TYPE_5__ {struct ib_mad_agent* mad_agent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_MGMT_MAD_DATA ; 
 int /*<<< orphan*/  IB_MGMT_MAD_HDR ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ib_mad_send_buf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ib_mad_send_buf* FUNC4 (struct ib_mad_agent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_send_buf*) ; 

__attribute__((used)) static int FUNC6(struct cm_id_private *cm_id_priv,
			struct ib_mad_send_buf **msg)
{
	struct ib_mad_agent *mad_agent;
	struct ib_mad_send_buf *m;
	struct ib_ah *ah;

	mad_agent = cm_id_priv->av.port->mad_agent;
	ah = FUNC3(mad_agent->qp->pd, &cm_id_priv->av.ah_attr);
	if (FUNC0(ah))
		return FUNC1(ah);

	m = FUNC4(mad_agent, cm_id_priv->id.remote_cm_qpn,
			       cm_id_priv->av.pkey_index,
			       0, IB_MGMT_MAD_HDR, IB_MGMT_MAD_DATA,
			       GFP_ATOMIC);
	if (FUNC0(m)) {
		FUNC5(ah);
		return FUNC1(m);
	}

	/* Timeout set by caller if response is expected. */
	m->ah = ah;
	m->retries = cm_id_priv->max_cm_retries;

	FUNC2(&cm_id_priv->refcount);
	m->context[0] = cm_id_priv;
	*msg = m;
	return 0;
}