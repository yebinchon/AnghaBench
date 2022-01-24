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
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct iu_entry {int /*<<< orphan*/  ilist; struct srp_target* target; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_6__ {TYPE_3__ cmd; } ;
struct TYPE_8__ {TYPE_2__ srp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct iu_entry*,struct srp_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct iu_entry*) ; 
 TYPE_4__* FUNC5 (struct iu_entry*) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *sc)
{
	unsigned long flags;
	struct iu_entry *iue = (struct iu_entry *) sc->SCp.ptr;
	struct srp_target *target = iue->target;

	FUNC0("%p %p %x\n", iue, target, FUNC5(iue)->srp.cmd.cdb[0]);

	FUNC2(&target->lock, flags);
	FUNC1(&iue->ilist);
	FUNC3(&target->lock, flags);

	FUNC4(iue);

	return 0;
}