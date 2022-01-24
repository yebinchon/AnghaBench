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
struct TYPE_2__ {scalar_t__ period; scalar_t__ offset; scalar_t__ width; scalar_t__ iu; scalar_t__ dt; scalar_t__ qas; int check_nego; } ;
struct sym_tcb {TYPE_1__ tprint; struct scsi_target* starget; } ;
struct scsi_target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_target*) ; 
 scalar_t__ FUNC1 (struct scsi_target*) ; 
 scalar_t__ FUNC2 (struct scsi_target*) ; 
 scalar_t__ FUNC3 (struct scsi_target*) ; 
 scalar_t__ FUNC4 (struct scsi_target*) ; 
 scalar_t__ FUNC5 (struct scsi_target*) ; 
 scalar_t__ FUNC6 (struct scsi_target*) ; 

__attribute__((used)) static void FUNC7(struct sym_tcb *tp)
{
	struct scsi_target *starget = tp->starget;

	if (tp->tprint.period != FUNC4(starget) ||
	    tp->tprint.offset != FUNC3(starget) ||
	    tp->tprint.width != FUNC6(starget) ||
	    tp->tprint.iu != FUNC2(starget) ||
	    tp->tprint.dt != FUNC1(starget) ||
	    tp->tprint.qas != FUNC5(starget) ||
	    !tp->tprint.check_nego) {
		tp->tprint.period = FUNC4(starget);
		tp->tprint.offset = FUNC3(starget);
		tp->tprint.width = FUNC6(starget);
		tp->tprint.iu = FUNC2(starget);
		tp->tprint.dt = FUNC1(starget);
		tp->tprint.qas = FUNC5(starget);
		tp->tprint.check_nego = 1;

		FUNC0(starget);
	}
}