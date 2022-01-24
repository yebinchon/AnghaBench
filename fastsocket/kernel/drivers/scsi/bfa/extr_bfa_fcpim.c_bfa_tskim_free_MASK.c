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
struct bfa_tskim_s {TYPE_2__* fcpim; int /*<<< orphan*/  qe; TYPE_1__* itnim; } ;
struct TYPE_4__ {int /*<<< orphan*/  tskim_free_q; } ;
struct TYPE_3__ {int /*<<< orphan*/  tsk_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct bfa_tskim_s *tskim)
{
	FUNC0(!FUNC1(&tskim->itnim->tsk_q, &tskim->qe));
	FUNC3(&tskim->qe);
	FUNC2(&tskim->qe, &tskim->fcpim->tskim_free_q);
}