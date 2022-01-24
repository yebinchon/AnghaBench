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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct srp_tsk_mgmt {int tag; int task_tag; int /*<<< orphan*/  tsk_mgmt_func; int /*<<< orphan*/  lun; int /*<<< orphan*/  opcode; } ;
struct srp_target_port {int /*<<< orphan*/  tsk_mgmt_done; int /*<<< orphan*/  lock; scalar_t__ qp_in_error; int /*<<< orphan*/  connected; TYPE_2__* srp_host; } ;
struct srp_iu {int /*<<< orphan*/  dma; struct srp_tsk_mgmt* buf; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* srp_dev; } ;
struct TYPE_3__ {struct ib_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SRP_ABORT_TIMEOUT_MS ; 
 int /*<<< orphan*/  SRP_IU_TSK_MGMT ; 
 int SRP_TAG_TSK_MGMT ; 
 int /*<<< orphan*/  SRP_TSK_MGMT ; 
 struct srp_iu* FUNC0 (struct srp_target_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct srp_tsk_mgmt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct srp_target_port*,struct srp_iu*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct srp_target_port*,struct srp_iu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct srp_target_port *target,
			     u64 req_tag, unsigned int lun, u8 func)
{
	struct ib_device *dev = target->srp_host->srp_dev->dev;
	struct srp_iu *iu;
	struct srp_tsk_mgmt *tsk_mgmt;

	if (!target->connected || target->qp_in_error)
		return -1;

	FUNC4(&target->tsk_mgmt_done);

	FUNC7(&target->lock);
	iu = FUNC0(target, SRP_IU_TSK_MGMT);
	FUNC8(&target->lock);

	if (!iu)
		return -1;

	FUNC2(dev, iu->dma, sizeof *tsk_mgmt,
				   DMA_TO_DEVICE);
	tsk_mgmt = iu->buf;
	FUNC5(tsk_mgmt, 0, sizeof *tsk_mgmt);

	tsk_mgmt->opcode 	= SRP_TSK_MGMT;
	tsk_mgmt->lun		= FUNC1((u64) lun << 48);
	tsk_mgmt->tag		= req_tag | SRP_TAG_TSK_MGMT;
	tsk_mgmt->tsk_mgmt_func = func;
	tsk_mgmt->task_tag	= req_tag;

	FUNC3(dev, iu->dma, sizeof *tsk_mgmt,
				      DMA_TO_DEVICE);
	if (FUNC9(target, iu, sizeof *tsk_mgmt)) {
		FUNC10(target, iu, SRP_IU_TSK_MGMT);
		return -1;
	}

	if (!FUNC11(&target->tsk_mgmt_done,
					 FUNC6(SRP_ABORT_TIMEOUT_MS)))
		return -1;

	return 0;
}