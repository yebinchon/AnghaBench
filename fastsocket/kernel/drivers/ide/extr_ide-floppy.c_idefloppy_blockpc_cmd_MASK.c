#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct request {int /*<<< orphan*/  cmd; } ;
struct ide_disk_obj {int dummy; } ;
struct ide_atapi_pc {int /*<<< orphan*/  flags; struct request* rq; int /*<<< orphan*/  c; } ;

/* Variables and functions */
 int /*<<< orphan*/  PC_FLAG_DMA_OK ; 
 int /*<<< orphan*/  PC_FLAG_WRITING ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct request*) ; 

__attribute__((used)) static void FUNC4(struct ide_disk_obj *floppy,
		struct ide_atapi_pc *pc, struct request *rq)
{
	FUNC1(pc);
	FUNC2(pc->c, rq->cmd, sizeof(pc->c));
	pc->rq = rq;
	if (FUNC0(rq)) {
		pc->flags |= PC_FLAG_DMA_OK;
		if (FUNC3(rq) == WRITE)
			pc->flags |= PC_FLAG_WRITING;
	}
}