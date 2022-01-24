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

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS_B1_XCTRL4A ; 
 int /*<<< orphan*/  DS_B1_XCTRL4B ; 
 unsigned char DS_REGA_DV0 ; 
 unsigned char DS_REGA_DV1 ; 
 unsigned char DS_REGA_DV2 ; 
 unsigned char DS_XCTRL4A_IFS ; 
 unsigned char DS_XCTRL4A_PAB ; 
 unsigned char DS_XCTRL4B_ABE ; 
 unsigned char DS_XCTRL4B_KFE ; 
 int /*<<< orphan*/  MACEISA_RTC_IRQ ; 
 int /*<<< orphan*/  RTC_REG_A ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned char reg_a, xctrl_a, xctrl_b;

	FUNC2(MACEISA_RTC_IRQ);
	reg_a = FUNC0(RTC_REG_A);

	/* setup for kickstart & wake-up (DS12287 Ref. Man. p. 19) */
	reg_a &= ~DS_REGA_DV2;
	reg_a |= DS_REGA_DV1;

	FUNC1(reg_a | DS_REGA_DV0, RTC_REG_A);
	FUNC3();
	xctrl_b = FUNC0(DS_B1_XCTRL4B)
		   | DS_XCTRL4B_ABE | DS_XCTRL4B_KFE;
	FUNC1(xctrl_b, DS_B1_XCTRL4B);
	xctrl_a = FUNC0(DS_B1_XCTRL4A) & ~DS_XCTRL4A_IFS;
	FUNC1(xctrl_a, DS_B1_XCTRL4A);
	FUNC3();
	/* adios amigos... */
	FUNC1(xctrl_a | DS_XCTRL4A_PAB, DS_B1_XCTRL4A);
	FUNC1(reg_a, RTC_REG_A);
	FUNC3();
	while (1);
}