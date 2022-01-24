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
struct sge_fl {int pend_cred; int /*<<< orphan*/  cntxt_id; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int DBPRIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_KDOORBELL ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct adapter *adap, struct sge_fl *q)
{
	if (q->pend_cred >= 8) {
		FUNC4();
		FUNC3(adap, FUNC0(SGE_PF_KDOORBELL), DBPRIO |
			     FUNC2(q->cntxt_id) | FUNC1(q->pend_cred / 8));
		q->pend_cred &= 7;
	}
}