#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;
typedef  TYPE_4__ scb_t ;
struct TYPE_17__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  quiescent; int /*<<< orphan*/  pending_list; } ;
typedef  TYPE_5__ adapter_t ;
struct TYPE_15__ {void (* scsi_done ) (TYPE_3__*) ;TYPE_2__* device; } ;
struct TYPE_14__ {TYPE_1__* host; } ;
struct TYPE_13__ {scalar_t__ hostdata; } ;
typedef  TYPE_3__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  SCB_PENDQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (TYPE_5__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(Scsi_Cmnd *scmd, void (*done)(Scsi_Cmnd *))
{
	adapter_t	*adapter;
	scb_t	*scb;
	int	busy=0;
	unsigned long flags;

	adapter = (adapter_t *)scmd->device->host->hostdata;

	scmd->scsi_done = done;


	/*
	 * Allocate and build a SCB request
	 * busy flag will be set if mega_build_cmd() command could not
	 * allocate scb. We will return non-zero status in that case.
	 * NOTE: scb can be null even though certain commands completed
	 * successfully, e.g., MODE_SENSE and TEST_UNIT_READY, we would
	 * return 0 in that case.
	 */

	FUNC4(&adapter->lock, flags);
	scb = FUNC2(adapter, scmd, &busy);
	if (!scb)
		goto out;

	scb->state |= SCB_PENDQ;
	FUNC1(&scb->list, &adapter->pending_list);

	/*
	 * Check if the HBA is in quiescent state, e.g., during a
	 * delete logical drive opertion. If it is, don't run
	 * the pending_list.
	 */
	if (FUNC0(&adapter->quiescent) == 0)
		FUNC3(adapter);

	busy = 0;
 out:
	FUNC5(&adapter->lock, flags);
	return busy;
}