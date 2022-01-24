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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ehca_shca {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
struct ehca_qp {scalar_t__ ext_type; int /*<<< orphan*/  wait_completion; int /*<<< orphan*/  nr_events; TYPE_1__ ipz_qp_handle; } ;
typedef  enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQE_QP_TOKEN ; 
 scalar_t__ EQPT_SRQ ; 
 scalar_t__ EQPT_SRQBASE ; 
 int IB_EVENT_QP_LAST_WQE_REACHED ; 
 int IB_EVENT_SRQ_ERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehca_shca*,struct ehca_qp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ehca_shca*,struct ehca_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehca_qp_idr ; 
 int /*<<< orphan*/  ehca_qp_idr_lock ; 
 struct ehca_qp* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ehca_shca *shca, u64 eqe,
			      enum ib_event_type event_type, int fatal)
{
	struct ehca_qp *qp;
	u32 token = FUNC0(EQE_QP_TOKEN, eqe);

	FUNC6(&ehca_qp_idr_lock);
	qp = FUNC5(&ehca_qp_idr, token);
	if (qp)
		FUNC2(&qp->nr_events);
	FUNC7(&ehca_qp_idr_lock);

	if (!qp)
		return;

	if (fatal)
		FUNC4(shca, qp, qp->ipz_qp_handle.handle);

	FUNC3(shca, qp, fatal && qp->ext_type == EQPT_SRQ ?
			  IB_EVENT_SRQ_ERR : event_type);

	/*
	 * eHCA only processes one WQE at a time for SRQ base QPs,
	 * so the last WQE has been processed as soon as the QP enters
	 * error state.
	 */
	if (fatal && qp->ext_type == EQPT_SRQBASE)
		FUNC3(shca, qp, IB_EVENT_QP_LAST_WQE_REACHED);

	if (FUNC1(&qp->nr_events))
		FUNC8(&qp->wait_completion);
	return;
}