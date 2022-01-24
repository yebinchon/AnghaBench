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
struct srp_target {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct scsi_cmnd {scalar_t__ result; TYPE_1__ SCp; } ;
struct iu_entry {int /*<<< orphan*/  ilist; struct srp_target* target; } ;
struct TYPE_8__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_6__ {TYPE_4__ cmd; } ;
struct TYPE_7__ {TYPE_2__ srp; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARDWARE_ERROR ; 
 int /*<<< orphan*/  NO_SENSE ; 
 scalar_t__ SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,struct iu_entry*,struct srp_target*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct iu_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvstgt_rdma ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct iu_entry*,struct scsi_cmnd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct iu_entry*) ; 
 int FUNC8 (struct scsi_cmnd*,TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC9 (struct iu_entry*) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *sc,
			     void (*done)(struct scsi_cmnd *))
{
	unsigned long flags;
	struct iu_entry *iue = (struct iu_entry *) sc->SCp.ptr;
	struct srp_target *target = iue->target;
	int err = 0;

	FUNC0("%p %p %x %u\n", iue, target, FUNC9(iue)->srp.cmd.cdb[0],
		FUNC3(sc));

	if (FUNC3(sc))
		err = FUNC8(sc, &FUNC9(iue)->srp.cmd, ibmvstgt_rdma, 1, 1);

	FUNC5(&target->lock, flags);
	FUNC2(&iue->ilist);
	FUNC6(&target->lock, flags);

	if (err|| sc->result != SAM_STAT_GOOD) {
		FUNC1("operation failed %p %d %x\n",
			iue, sc->result, FUNC9(iue)->srp.cmd.cdb[0]);
		FUNC4(iue, sc, HARDWARE_ERROR, 0x00);
	} else
		FUNC4(iue, sc, NO_SENSE, 0x00);

	done(sc);
	FUNC7(iue);
	return 0;
}