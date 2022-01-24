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
typedef  int /*<<< orphan*/  u32 ;
struct ixgb_hw {scalar_t__ adapter_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPRCH ; 
 int /*<<< orphan*/  BPRCL ; 
 int /*<<< orphan*/  BPTCH ; 
 int /*<<< orphan*/  BPTCL ; 
 int /*<<< orphan*/  CRCERRS ; 
 int /*<<< orphan*/  DC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ECBC ; 
 int /*<<< orphan*/  GORCH ; 
 int /*<<< orphan*/  GORCL ; 
 int /*<<< orphan*/  GOTCH ; 
 int /*<<< orphan*/  GOTCL ; 
 int /*<<< orphan*/  GPRCH ; 
 int /*<<< orphan*/  GPRCL ; 
 int /*<<< orphan*/  GPTCH ; 
 int /*<<< orphan*/  GPTCL ; 
 int /*<<< orphan*/  IBIC ; 
 int /*<<< orphan*/  ICBC ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JPRCH ; 
 int /*<<< orphan*/  JPRCL ; 
 int /*<<< orphan*/  JPTCH ; 
 int /*<<< orphan*/  JPTCL ; 
 int /*<<< orphan*/  LFC ; 
 int /*<<< orphan*/  MCFRC ; 
 int /*<<< orphan*/  MCFTC ; 
 int /*<<< orphan*/  MPC ; 
 int /*<<< orphan*/  MPRCH ; 
 int /*<<< orphan*/  MPRCL ; 
 int /*<<< orphan*/  MPTCH ; 
 int /*<<< orphan*/  MPTCL ; 
 int /*<<< orphan*/  PFRC ; 
 int /*<<< orphan*/  PFTC ; 
 int /*<<< orphan*/  PLT64C ; 
 int /*<<< orphan*/  RFC ; 
 int /*<<< orphan*/  RJC ; 
 int /*<<< orphan*/  RLEC ; 
 int /*<<< orphan*/  RNBC ; 
 int /*<<< orphan*/  ROC ; 
 int /*<<< orphan*/  RUC ; 
 int /*<<< orphan*/  TORH ; 
 int /*<<< orphan*/  TORL ; 
 int /*<<< orphan*/  TOTH ; 
 int /*<<< orphan*/  TOTL ; 
 int /*<<< orphan*/  TPRH ; 
 int /*<<< orphan*/  TPRL ; 
 int /*<<< orphan*/  TPTH ; 
 int /*<<< orphan*/  TPTL ; 
 int /*<<< orphan*/  TSCTC ; 
 int /*<<< orphan*/  TSCTFC ; 
 int /*<<< orphan*/  UPRCH ; 
 int /*<<< orphan*/  UPRCL ; 
 int /*<<< orphan*/  UPTCH ; 
 int /*<<< orphan*/  UPTCL ; 
 int /*<<< orphan*/  VPRCH ; 
 int /*<<< orphan*/  VPRCL ; 
 int /*<<< orphan*/  VPTCH ; 
 int /*<<< orphan*/  VPTCL ; 
 int /*<<< orphan*/  XOFFRXC ; 
 int /*<<< orphan*/  XOFFTXC ; 
 int /*<<< orphan*/  XONRXC ; 
 int /*<<< orphan*/  XONTXC ; 

__attribute__((used)) static void
FUNC3(struct ixgb_hw *hw)
{
	volatile u32 temp_reg;

	FUNC0("ixgb_clear_hw_cntrs");

	/* if we are stopped or resetting exit gracefully */
	if (hw->adapter_stopped) {
		FUNC1("Exiting because the adapter is stopped!!!\n");
		return;
	}

	temp_reg = FUNC2(hw, TPRL);
	temp_reg = FUNC2(hw, TPRH);
	temp_reg = FUNC2(hw, GPRCL);
	temp_reg = FUNC2(hw, GPRCH);
	temp_reg = FUNC2(hw, BPRCL);
	temp_reg = FUNC2(hw, BPRCH);
	temp_reg = FUNC2(hw, MPRCL);
	temp_reg = FUNC2(hw, MPRCH);
	temp_reg = FUNC2(hw, UPRCL);
	temp_reg = FUNC2(hw, UPRCH);
	temp_reg = FUNC2(hw, VPRCL);
	temp_reg = FUNC2(hw, VPRCH);
	temp_reg = FUNC2(hw, JPRCL);
	temp_reg = FUNC2(hw, JPRCH);
	temp_reg = FUNC2(hw, GORCL);
	temp_reg = FUNC2(hw, GORCH);
	temp_reg = FUNC2(hw, TORL);
	temp_reg = FUNC2(hw, TORH);
	temp_reg = FUNC2(hw, RNBC);
	temp_reg = FUNC2(hw, RUC);
	temp_reg = FUNC2(hw, ROC);
	temp_reg = FUNC2(hw, RLEC);
	temp_reg = FUNC2(hw, CRCERRS);
	temp_reg = FUNC2(hw, ICBC);
	temp_reg = FUNC2(hw, ECBC);
	temp_reg = FUNC2(hw, MPC);
	temp_reg = FUNC2(hw, TPTL);
	temp_reg = FUNC2(hw, TPTH);
	temp_reg = FUNC2(hw, GPTCL);
	temp_reg = FUNC2(hw, GPTCH);
	temp_reg = FUNC2(hw, BPTCL);
	temp_reg = FUNC2(hw, BPTCH);
	temp_reg = FUNC2(hw, MPTCL);
	temp_reg = FUNC2(hw, MPTCH);
	temp_reg = FUNC2(hw, UPTCL);
	temp_reg = FUNC2(hw, UPTCH);
	temp_reg = FUNC2(hw, VPTCL);
	temp_reg = FUNC2(hw, VPTCH);
	temp_reg = FUNC2(hw, JPTCL);
	temp_reg = FUNC2(hw, JPTCH);
	temp_reg = FUNC2(hw, GOTCL);
	temp_reg = FUNC2(hw, GOTCH);
	temp_reg = FUNC2(hw, TOTL);
	temp_reg = FUNC2(hw, TOTH);
	temp_reg = FUNC2(hw, DC);
	temp_reg = FUNC2(hw, PLT64C);
	temp_reg = FUNC2(hw, TSCTC);
	temp_reg = FUNC2(hw, TSCTFC);
	temp_reg = FUNC2(hw, IBIC);
	temp_reg = FUNC2(hw, RFC);
	temp_reg = FUNC2(hw, LFC);
	temp_reg = FUNC2(hw, PFRC);
	temp_reg = FUNC2(hw, PFTC);
	temp_reg = FUNC2(hw, MCFRC);
	temp_reg = FUNC2(hw, MCFTC);
	temp_reg = FUNC2(hw, XONRXC);
	temp_reg = FUNC2(hw, XONTXC);
	temp_reg = FUNC2(hw, XOFFRXC);
	temp_reg = FUNC2(hw, XOFFTXC);
	temp_reg = FUNC2(hw, RJC);
	return;
}