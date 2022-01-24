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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPRC ; 
 int /*<<< orphan*/  BPTC ; 
 int /*<<< orphan*/  COLC ; 
 int /*<<< orphan*/  CRCERRS ; 
 int /*<<< orphan*/  DC ; 
 int /*<<< orphan*/  ECOL ; 
 int /*<<< orphan*/  FCRUC ; 
 int /*<<< orphan*/  GORCH ; 
 int /*<<< orphan*/  GORCL ; 
 int /*<<< orphan*/  GOTCH ; 
 int /*<<< orphan*/  GOTCL ; 
 int /*<<< orphan*/  GPRC ; 
 int /*<<< orphan*/  GPTC ; 
 int /*<<< orphan*/  LATECOL ; 
 int /*<<< orphan*/  MCC ; 
 int /*<<< orphan*/  MPC ; 
 int /*<<< orphan*/  MPRC ; 
 int /*<<< orphan*/  MPTC ; 
 int /*<<< orphan*/  RFC ; 
 int /*<<< orphan*/  RJC ; 
 int /*<<< orphan*/  RLEC ; 
 int /*<<< orphan*/  RNBC ; 
 int /*<<< orphan*/  ROC ; 
 int /*<<< orphan*/  RUC ; 
 int /*<<< orphan*/  SCC ; 
 int /*<<< orphan*/  SEC ; 
 int /*<<< orphan*/  SYMERRS ; 
 int /*<<< orphan*/  TORH ; 
 int /*<<< orphan*/  TORL ; 
 int /*<<< orphan*/  TOTH ; 
 int /*<<< orphan*/  TOTL ; 
 int /*<<< orphan*/  TPR ; 
 int /*<<< orphan*/  TPT ; 
 int /*<<< orphan*/  XOFFRXC ; 
 int /*<<< orphan*/  XOFFTXC ; 
 int /*<<< orphan*/  XONRXC ; 
 int /*<<< orphan*/  XONTXC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct e1000_hw *hw)
{
	FUNC0(CRCERRS);
	FUNC0(SYMERRS);
	FUNC0(MPC);
	FUNC0(SCC);
	FUNC0(ECOL);
	FUNC0(MCC);
	FUNC0(LATECOL);
	FUNC0(COLC);
	FUNC0(DC);
	FUNC0(SEC);
	FUNC0(RLEC);
	FUNC0(XONRXC);
	FUNC0(XONTXC);
	FUNC0(XOFFRXC);
	FUNC0(XOFFTXC);
	FUNC0(FCRUC);
	FUNC0(GPRC);
	FUNC0(BPRC);
	FUNC0(MPRC);
	FUNC0(GPTC);
	FUNC0(GORCL);
	FUNC0(GORCH);
	FUNC0(GOTCL);
	FUNC0(GOTCH);
	FUNC0(RNBC);
	FUNC0(RUC);
	FUNC0(RFC);
	FUNC0(ROC);
	FUNC0(RJC);
	FUNC0(TORL);
	FUNC0(TORH);
	FUNC0(TOTL);
	FUNC0(TOTH);
	FUNC0(TPR);
	FUNC0(TPT);
	FUNC0(MPTC);
	FUNC0(BPTC);
}