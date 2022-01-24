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
struct e1000_hw {scalar_t__ mac_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGNERRC ; 
 int /*<<< orphan*/  BPRC ; 
 int /*<<< orphan*/  BPTC ; 
 int /*<<< orphan*/  CEXTERR ; 
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
 int /*<<< orphan*/  MGTPDC ; 
 int /*<<< orphan*/  MGTPRC ; 
 int /*<<< orphan*/  MGTPTC ; 
 int /*<<< orphan*/  MPC ; 
 int /*<<< orphan*/  MPRC ; 
 int /*<<< orphan*/  MPTC ; 
 int /*<<< orphan*/  PRC1023 ; 
 int /*<<< orphan*/  PRC127 ; 
 int /*<<< orphan*/  PRC1522 ; 
 int /*<<< orphan*/  PRC255 ; 
 int /*<<< orphan*/  PRC511 ; 
 int /*<<< orphan*/  PRC64 ; 
 int /*<<< orphan*/  PTC1023 ; 
 int /*<<< orphan*/  PTC127 ; 
 int /*<<< orphan*/  PTC1522 ; 
 int /*<<< orphan*/  PTC255 ; 
 int /*<<< orphan*/  PTC511 ; 
 int /*<<< orphan*/  PTC64 ; 
 int /*<<< orphan*/  RFC ; 
 int /*<<< orphan*/  RJC ; 
 int /*<<< orphan*/  RLEC ; 
 int /*<<< orphan*/  RNBC ; 
 int /*<<< orphan*/  ROC ; 
 int /*<<< orphan*/  RUC ; 
 int /*<<< orphan*/  RXERRC ; 
 int /*<<< orphan*/  SCC ; 
 int /*<<< orphan*/  SEC ; 
 int /*<<< orphan*/  SYMERRS ; 
 int /*<<< orphan*/  TNCRS ; 
 int /*<<< orphan*/  TORH ; 
 int /*<<< orphan*/  TORL ; 
 int /*<<< orphan*/  TOTH ; 
 int /*<<< orphan*/  TOTL ; 
 int /*<<< orphan*/  TPR ; 
 int /*<<< orphan*/  TPT ; 
 int /*<<< orphan*/  TSCTC ; 
 int /*<<< orphan*/  TSCTFC ; 
 int /*<<< orphan*/  XOFFRXC ; 
 int /*<<< orphan*/  XOFFTXC ; 
 int /*<<< orphan*/  XONRXC ; 
 int /*<<< orphan*/  XONTXC ; 
 scalar_t__ e1000_82543 ; 
 scalar_t__ e1000_82544 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct e1000_hw *hw)
{
	volatile u32 temp;

	temp = FUNC0(CRCERRS);
	temp = FUNC0(SYMERRS);
	temp = FUNC0(MPC);
	temp = FUNC0(SCC);
	temp = FUNC0(ECOL);
	temp = FUNC0(MCC);
	temp = FUNC0(LATECOL);
	temp = FUNC0(COLC);
	temp = FUNC0(DC);
	temp = FUNC0(SEC);
	temp = FUNC0(RLEC);
	temp = FUNC0(XONRXC);
	temp = FUNC0(XONTXC);
	temp = FUNC0(XOFFRXC);
	temp = FUNC0(XOFFTXC);
	temp = FUNC0(FCRUC);

	temp = FUNC0(PRC64);
	temp = FUNC0(PRC127);
	temp = FUNC0(PRC255);
	temp = FUNC0(PRC511);
	temp = FUNC0(PRC1023);
	temp = FUNC0(PRC1522);

	temp = FUNC0(GPRC);
	temp = FUNC0(BPRC);
	temp = FUNC0(MPRC);
	temp = FUNC0(GPTC);
	temp = FUNC0(GORCL);
	temp = FUNC0(GORCH);
	temp = FUNC0(GOTCL);
	temp = FUNC0(GOTCH);
	temp = FUNC0(RNBC);
	temp = FUNC0(RUC);
	temp = FUNC0(RFC);
	temp = FUNC0(ROC);
	temp = FUNC0(RJC);
	temp = FUNC0(TORL);
	temp = FUNC0(TORH);
	temp = FUNC0(TOTL);
	temp = FUNC0(TOTH);
	temp = FUNC0(TPR);
	temp = FUNC0(TPT);

	temp = FUNC0(PTC64);
	temp = FUNC0(PTC127);
	temp = FUNC0(PTC255);
	temp = FUNC0(PTC511);
	temp = FUNC0(PTC1023);
	temp = FUNC0(PTC1522);

	temp = FUNC0(MPTC);
	temp = FUNC0(BPTC);

	if (hw->mac_type < e1000_82543)
		return;

	temp = FUNC0(ALGNERRC);
	temp = FUNC0(RXERRC);
	temp = FUNC0(TNCRS);
	temp = FUNC0(CEXTERR);
	temp = FUNC0(TSCTC);
	temp = FUNC0(TSCTFC);

	if (hw->mac_type <= e1000_82544)
		return;

	temp = FUNC0(MGTPRC);
	temp = FUNC0(MGTPDC);
	temp = FUNC0(MGTPTC);
}