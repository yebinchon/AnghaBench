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
struct adapter {int dummy; } ;

/* Variables and functions */
 int EGRESS_SIZE_ERR ; 
 int ERR_BAD_DB_PIDX0 ; 
 int ERR_BAD_DB_PIDX1 ; 
 int ERR_BAD_DB_PIDX2 ; 
 int ERR_BAD_DB_PIDX3 ; 
 int ERR_CPL_EXCEED_IQE_SIZE ; 
 int ERR_CPL_OPCODE_0 ; 
 int ERR_DATA_CPL_ON_HIGH_QID0 ; 
 int ERR_DATA_CPL_ON_HIGH_QID1 ; 
 int ERR_DROPPED_DB ; 
 int ERR_EGR_CTXT_PRIO ; 
 int ERR_ING_CTXT_PRIO ; 
 int ERR_INVALID_CIDX_INC ; 
 int F_DBFIFO_HP_INT ; 
 int F_DBFIFO_LP_INT ; 
 int INGRESS_SIZE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PF_INTR_MASK ; 
 int /*<<< orphan*/  PL_INT_MAP0 ; 
 int /*<<< orphan*/  PL_PF_INT_ENABLE ; 
 int /*<<< orphan*/  PL_WHOAMI ; 
 int /*<<< orphan*/  SGE_INT_ENABLE3 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct adapter *adapter)
{
	u32 pf = FUNC1(FUNC2(adapter, PL_WHOAMI));

	FUNC4(adapter, SGE_INT_ENABLE3, ERR_CPL_EXCEED_IQE_SIZE |
		     ERR_INVALID_CIDX_INC | ERR_CPL_OPCODE_0 |
		     ERR_DROPPED_DB | ERR_DATA_CPL_ON_HIGH_QID1 |
		     ERR_DATA_CPL_ON_HIGH_QID0 | ERR_BAD_DB_PIDX3 |
		     ERR_BAD_DB_PIDX2 | ERR_BAD_DB_PIDX1 |
		     ERR_BAD_DB_PIDX0 | ERR_ING_CTXT_PRIO |
		     ERR_EGR_CTXT_PRIO | INGRESS_SIZE_ERR |
		     F_DBFIFO_HP_INT | F_DBFIFO_LP_INT |
		     EGRESS_SIZE_ERR);
	FUNC4(adapter, FUNC0(PL_PF_INT_ENABLE), PF_INTR_MASK);
	FUNC3(adapter, PL_INT_MAP0, 0, 1 << pf);
}