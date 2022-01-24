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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_CEH ; 
 int /*<<< orphan*/  PT_CEL ; 
 int /*<<< orphan*/  PT_CONDITION ; 
 int /*<<< orphan*/  PT_ECR ; 
 int /*<<< orphan*/  PT_EMA ; 
 int /*<<< orphan*/  PT_EPC ; 
 int /*<<< orphan*/  PT_IS_SYSCALL ; 
 int /*<<< orphan*/  PT_ORIG_R4 ; 
 int /*<<< orphan*/  PT_ORIG_R7 ; 
 int /*<<< orphan*/  PT_PSR ; 
 int /*<<< orphan*/  PT_R0 ; 
 int /*<<< orphan*/  PT_R1 ; 
 int /*<<< orphan*/  PT_R10 ; 
 int /*<<< orphan*/  PT_R11 ; 
 int /*<<< orphan*/  PT_R12 ; 
 int /*<<< orphan*/  PT_R13 ; 
 int /*<<< orphan*/  PT_R14 ; 
 int /*<<< orphan*/  PT_R15 ; 
 int /*<<< orphan*/  PT_R16 ; 
 int /*<<< orphan*/  PT_R17 ; 
 int /*<<< orphan*/  PT_R18 ; 
 int /*<<< orphan*/  PT_R19 ; 
 int /*<<< orphan*/  PT_R2 ; 
 int /*<<< orphan*/  PT_R20 ; 
 int /*<<< orphan*/  PT_R21 ; 
 int /*<<< orphan*/  PT_R22 ; 
 int /*<<< orphan*/  PT_R23 ; 
 int /*<<< orphan*/  PT_R24 ; 
 int /*<<< orphan*/  PT_R25 ; 
 int /*<<< orphan*/  PT_R26 ; 
 int /*<<< orphan*/  PT_R27 ; 
 int /*<<< orphan*/  PT_R28 ; 
 int /*<<< orphan*/  PT_R29 ; 
 int /*<<< orphan*/  PT_R3 ; 
 int /*<<< orphan*/  PT_R30 ; 
 int /*<<< orphan*/  PT_R31 ; 
 int /*<<< orphan*/  PT_R4 ; 
 int /*<<< orphan*/  PT_R5 ; 
 int /*<<< orphan*/  PT_R6 ; 
 int /*<<< orphan*/  PT_R7 ; 
 int /*<<< orphan*/  PT_R8 ; 
 int /*<<< orphan*/  PT_R9 ; 
 int /*<<< orphan*/  PT_SIZE ; 
 int /*<<< orphan*/  PT_SR0 ; 
 int /*<<< orphan*/  PT_SR1 ; 
 int /*<<< orphan*/  PT_SR2 ; 
 int /*<<< orphan*/  ceh ; 
 int /*<<< orphan*/  cel ; 
 int /*<<< orphan*/  cp0_condition ; 
 int /*<<< orphan*/  cp0_ecr ; 
 int /*<<< orphan*/  cp0_ema ; 
 int /*<<< orphan*/  cp0_epc ; 
 int /*<<< orphan*/  cp0_psr ; 
 int /*<<< orphan*/  is_syscall ; 
 int /*<<< orphan*/  orig_r4 ; 
 int /*<<< orphan*/  orig_r7 ; 
 int /*<<< orphan*/  pt_regs ; 
 int /*<<< orphan*/ * regs ; 
 int /*<<< orphan*/  sr0 ; 
 int /*<<< orphan*/  sr1 ; 
 int /*<<< orphan*/  sr2 ; 

void FUNC4(void)
{
	FUNC1("SCORE pt_regs offsets.");
	FUNC3(PT_R0, pt_regs, regs[0]);
	FUNC3(PT_R1, pt_regs, regs[1]);
	FUNC3(PT_R2, pt_regs, regs[2]);
	FUNC3(PT_R3, pt_regs, regs[3]);
	FUNC3(PT_R4, pt_regs, regs[4]);
	FUNC3(PT_R5, pt_regs, regs[5]);
	FUNC3(PT_R6, pt_regs, regs[6]);
	FUNC3(PT_R7, pt_regs, regs[7]);
	FUNC3(PT_R8, pt_regs, regs[8]);
	FUNC3(PT_R9, pt_regs, regs[9]);
	FUNC3(PT_R10, pt_regs, regs[10]);
	FUNC3(PT_R11, pt_regs, regs[11]);
	FUNC3(PT_R12, pt_regs, regs[12]);
	FUNC3(PT_R13, pt_regs, regs[13]);
	FUNC3(PT_R14, pt_regs, regs[14]);
	FUNC3(PT_R15, pt_regs, regs[15]);
	FUNC3(PT_R16, pt_regs, regs[16]);
	FUNC3(PT_R17, pt_regs, regs[17]);
	FUNC3(PT_R18, pt_regs, regs[18]);
	FUNC3(PT_R19, pt_regs, regs[19]);
	FUNC3(PT_R20, pt_regs, regs[20]);
	FUNC3(PT_R21, pt_regs, regs[21]);
	FUNC3(PT_R22, pt_regs, regs[22]);
	FUNC3(PT_R23, pt_regs, regs[23]);
	FUNC3(PT_R24, pt_regs, regs[24]);
	FUNC3(PT_R25, pt_regs, regs[25]);
	FUNC3(PT_R26, pt_regs, regs[26]);
	FUNC3(PT_R27, pt_regs, regs[27]);
	FUNC3(PT_R28, pt_regs, regs[28]);
	FUNC3(PT_R29, pt_regs, regs[29]);
	FUNC3(PT_R30, pt_regs, regs[30]);
	FUNC3(PT_R31, pt_regs, regs[31]);

	FUNC3(PT_ORIG_R4, pt_regs, orig_r4);
	FUNC3(PT_ORIG_R7, pt_regs, orig_r7);
	FUNC3(PT_CEL, pt_regs, cel);
	FUNC3(PT_CEH, pt_regs, ceh);
	FUNC3(PT_SR0, pt_regs, sr0);
	FUNC3(PT_SR1, pt_regs, sr1);
	FUNC3(PT_SR2, pt_regs, sr2);
	FUNC3(PT_EPC, pt_regs, cp0_epc);
	FUNC3(PT_EMA, pt_regs, cp0_ema);
	FUNC3(PT_PSR, pt_regs, cp0_psr);
	FUNC3(PT_ECR, pt_regs, cp0_ecr);
	FUNC3(PT_CONDITION, pt_regs, cp0_condition);
	FUNC3(PT_IS_SYSCALL, pt_regs, is_syscall);

	FUNC2(PT_SIZE, sizeof(struct pt_regs));
	FUNC0();
}