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
 int CIM ; 
 int CPL_SWITCH ; 
 int EDC0 ; 
 int EDC1 ; 
 int GLBL_INTR_MASK ; 
 int LE ; 
 int MA ; 
 int MC ; 
 int /*<<< orphan*/  MEM_EDC0 ; 
 int /*<<< orphan*/  MEM_EDC1 ; 
 int /*<<< orphan*/  MEM_MC ; 
 int MPS ; 
 int NCSI ; 
 int PCIE ; 
 int PL ; 
 int /*<<< orphan*/  PL_INT_CAUSE ; 
 int PM_RX ; 
 int PM_TX ; 
 int SGE ; 
 int SMB ; 
 int TP ; 
 int ULP_RX ; 
 int ULP_TX ; 
 int XGMAC0 ; 
 int XGMAC1 ; 
 int XGMAC_KR0 ; 
 int XGMAC_KR1 ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*) ; 
 int FUNC13 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*,int) ; 

int FUNC19(struct adapter *adapter)
{
	u32 cause = FUNC13(adapter, PL_INT_CAUSE);

	if (!(cause & GLBL_INTR_MASK))
		return 0;
	if (cause & CIM)
		FUNC0(adapter);
	if (cause & MPS)
		FUNC5(adapter);
	if (cause & NCSI)
		FUNC6(adapter);
	if (cause & PL)
		FUNC8(adapter);
	if (cause & SMB)
		FUNC12(adapter);
	if (cause & XGMAC0)
		FUNC18(adapter, 0);
	if (cause & XGMAC1)
		FUNC18(adapter, 1);
	if (cause & XGMAC_KR0)
		FUNC18(adapter, 2);
	if (cause & XGMAC_KR1)
		FUNC18(adapter, 3);
	if (cause & PCIE)
		FUNC7(adapter);
	if (cause & MC)
		FUNC4(adapter, MEM_MC);
	if (cause & EDC0)
		FUNC4(adapter, MEM_EDC0);
	if (cause & EDC1)
		FUNC4(adapter, MEM_EDC1);
	if (cause & LE)
		FUNC2(adapter);
	if (cause & TP)
		FUNC15(adapter);
	if (cause & MA)
		FUNC3(adapter);
	if (cause & PM_TX)
		FUNC10(adapter);
	if (cause & PM_RX)
		FUNC9(adapter);
	if (cause & ULP_RX)
		FUNC16(adapter);
	if (cause & CPL_SWITCH)
		FUNC1(adapter);
	if (cause & SGE)
		FUNC11(adapter);
	if (cause & ULP_TX)
		FUNC17(adapter);

	/* Clear the interrupts just processed for which we are the master. */
	FUNC14(adapter, PL_INT_CAUSE, cause & GLBL_INTR_MASK);
	(void) FUNC13(adapter, PL_INT_CAUSE); /* flush */
	return 1;
}