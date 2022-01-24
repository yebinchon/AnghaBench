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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
struct c4iw_qp {TYPE_4__* rhp; TYPE_3__ wq; } ;
struct TYPE_5__ {int dbfifo_int_thresh; int /*<<< orphan*/ * ports; } ;
struct TYPE_6__ {TYPE_1__ lldi; } ;
struct TYPE_8__ {int /*<<< orphan*/  db_mutex; TYPE_2__ rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int db_delay_usecs ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct c4iw_qp *qhp, u32 qid, u16 inc)
{
	int delay = db_delay_usecs;

	FUNC4(&qhp->rhp->db_mutex);
	do {

		/*
		 * The interrupt threshold is dbfifo_int_thresh << 6. So
		 * make sure we don't cross that and generate an interrupt.
		 */
		if (FUNC2(qhp->rhp->rdev.lldi.ports[0], 1) <
		    (qhp->rhp->rdev.lldi.dbfifo_int_thresh << 5)) {
			FUNC9(FUNC1(qid) | FUNC0(inc), qhp->wq.db);
			break;
		}
		FUNC7(TASK_UNINTERRUPTIBLE);
		FUNC6(FUNC8(delay));
		delay = FUNC3(delay << 1, 2000);
	} while (1);
	FUNC5(&qhp->rhp->db_mutex);
	return 0;
}