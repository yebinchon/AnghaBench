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
typedef  int u32 ;
struct TYPE_2__ {int dbid; } ;
struct ocrdma_qp {int /*<<< orphan*/  rq_db; TYPE_1__ rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ocrdma_qp*) ; 

__attribute__((used)) static void FUNC2(struct ocrdma_qp *qp)
{
	u32 val = qp->rq.dbid | (1 << FUNC1(qp));

	FUNC0(val, qp->rq_db);
}