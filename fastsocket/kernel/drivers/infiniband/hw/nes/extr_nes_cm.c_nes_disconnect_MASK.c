#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nes_vnic {TYPE_2__* netdev; struct nes_ib_device* nesibdev; struct nes_device* nesdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;
struct nes_qp {scalar_t__ cm_node; int /*<<< orphan*/  ietf_frame_pbase; int /*<<< orphan*/  ietf_frame; scalar_t__ ietf_frame_size; scalar_t__ private_data_len; int /*<<< orphan*/  lsmm_mr; scalar_t__ active_conn; TYPE_1__ ibqp; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* dereg_mr ) (int /*<<< orphan*/ ) ;} ;
struct nes_ib_device {TYPE_3__ ibdev; } ;
struct nes_device {int /*<<< orphan*/  pcidev; } ;
struct TYPE_11__ {TYPE_4__* api; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* close ) (TYPE_5__*,scalar_t__) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* g_cm_core ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 struct nes_vnic* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nes_qp *nesqp, int abrupt)
{
	int ret = 0;
	struct nes_vnic *nesvnic;
	struct nes_device *nesdev;
	struct nes_ib_device *nesibdev;

	nesvnic = FUNC5(nesqp->ibqp.device);
	if (!nesvnic)
		return -EINVAL;

	nesdev = nesvnic->nesdev;
	nesibdev = nesvnic->nesibdev;

	FUNC1(NES_DBG_CM, "netdev refcnt = %u.\n",
			FUNC0(&nesvnic->netdev->refcnt));

	if (nesqp->active_conn) {

		/* indicate this connection is NOT active */
		nesqp->active_conn = 0;
	} else {
		/* Need to free the Last Streaming Mode Message */
		if (nesqp->ietf_frame) {
			if (nesqp->lsmm_mr)
				nesibdev->ibdev.dereg_mr(nesqp->lsmm_mr);
			FUNC2(nesdev->pcidev,
					    nesqp->private_data_len + nesqp->ietf_frame_size,
					    nesqp->ietf_frame, nesqp->ietf_frame_pbase);
		}
	}

	/* close the CM node down if it is still active */
	if (nesqp->cm_node) {
		FUNC1(NES_DBG_CM, "Call close API\n");

		g_cm_core->api->close(g_cm_core, nesqp->cm_node);
	}

	return ret;
}