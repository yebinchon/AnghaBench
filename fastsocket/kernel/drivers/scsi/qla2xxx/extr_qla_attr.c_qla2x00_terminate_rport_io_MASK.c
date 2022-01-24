#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct fc_rport {scalar_t__ dd_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  al_pa; int /*<<< orphan*/  area; int /*<<< orphan*/  domain; } ;
struct TYPE_12__ {TYPE_2__ b; } ;
struct TYPE_13__ {scalar_t__ loop_id; TYPE_5__* vha; TYPE_3__ d_id; } ;
typedef  TYPE_4__ fc_port_t ;
struct TYPE_15__ {TYPE_1__* isp_ops; int /*<<< orphan*/  pdev; } ;
struct TYPE_14__ {TYPE_9__* hw; int /*<<< orphan*/  dpc_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* fabric_logout ) (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 int DID_NO_CONNECT ; 
 scalar_t__ FC_NO_LOOP_ID ; 
 scalar_t__ FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct fc_rport *rport)
{
	fc_port_t *fcport = *(fc_port_t **)rport->dd_data;

	if (!fcport)
		return;

	if (FUNC5(ABORT_ISP_ACTIVE, &fcport->vha->dpc_flags))
		return;

	if (FUNC6(FUNC1(fcport->vha->hw->pdev))) {
		FUNC2(fcport->vha, DID_NO_CONNECT << 16);
		return;
	}
	/*
	 * At this point all fcport's software-states are cleared.  Perform any
	 * final cleanup of firmware resources (PCBs and XCBs).
	 */
	if (fcport->loop_id != FC_NO_LOOP_ID) {
		if (FUNC0(fcport->vha->hw))
			fcport->vha->hw->isp_ops->fabric_logout(fcport->vha,
			    fcport->loop_id, fcport->d_id.b.domain,
			    fcport->d_id.b.area, fcport->d_id.b.al_pa);
		else
			FUNC3(fcport->vha, fcport);
	}
}