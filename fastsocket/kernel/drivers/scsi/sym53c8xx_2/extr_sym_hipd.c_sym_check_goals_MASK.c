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
struct sym_trans {int width; int dt; scalar_t__ offset; scalar_t__ period; scalar_t__ qas; scalar_t__ iu; } ;
struct sym_hcb {scalar_t__ scsi_mode; int features; scalar_t__ maxoffs_dt; scalar_t__ minsync_dt; scalar_t__ maxsync_dt; scalar_t__ maxoffs; scalar_t__ minsync; scalar_t__ maxsync; } ;
struct scsi_target {int dummy; } ;

/* Variables and functions */
 int FE_U3EN ; 
 scalar_t__ SMODE_LVD ; 
 scalar_t__ FUNC0 (struct scsi_target*) ; 
 scalar_t__ FUNC1 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_target*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_target*) ; 

__attribute__((used)) static void FUNC4(struct sym_hcb *np, struct scsi_target *starget,
		struct sym_trans *goal)
{
	if (!FUNC3(starget))
		goal->width = 0;

	if (!FUNC2(starget)) {
		goal->iu = 0;
		goal->dt = 0;
		goal->qas = 0;
		goal->offset = 0;
		return;
	}

	if (FUNC0(starget)) {
		if (FUNC1(starget))
			goal->dt = 1;

		if (goal->offset == 0)
			goal->dt = 0;
	} else {
		goal->dt = 0;
	}

	/* Some targets fail to properly negotiate DT in SE mode */
	if ((np->scsi_mode != SMODE_LVD) || !(np->features & FE_U3EN))
		goal->dt = 0;

	if (goal->dt) {
		/* all DT transfers must be wide */
		goal->width = 1;
		if (goal->offset > np->maxoffs_dt)
			goal->offset = np->maxoffs_dt;
		if (goal->period < np->minsync_dt)
			goal->period = np->minsync_dt;
		if (goal->period > np->maxsync_dt)
			goal->period = np->maxsync_dt;
	} else {
		goal->iu = goal->qas = 0;
		if (goal->offset > np->maxoffs)
			goal->offset = np->maxoffs;
		if (goal->period < np->minsync)
			goal->period = np->minsync;
		if (goal->period > np->maxsync)
			goal->period = np->maxsync;
	}
}