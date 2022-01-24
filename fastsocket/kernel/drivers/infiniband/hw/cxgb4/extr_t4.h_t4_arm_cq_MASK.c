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
typedef  int u32 ;
struct t4_cq {scalar_t__ cidx_inc; int /*<<< orphan*/  gts; int /*<<< orphan*/  cqid; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ CIDXINC_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct t4_cq *cq, int se)
{
	u32 val;

	while (cq->cidx_inc > CIDXINC_MASK) {
		val = FUNC2(0) | FUNC0(CIDXINC_MASK) | FUNC3(7) |
		      FUNC1(cq->cqid);
		FUNC4(val, cq->gts);
		cq->cidx_inc -= CIDXINC_MASK;
	}
	val = FUNC2(se) | FUNC0(cq->cidx_inc) | FUNC3(6) |
	      FUNC1(cq->cqid);
	FUNC4(val, cq->gts);
	cq->cidx_inc = 0;
	return 0;
}