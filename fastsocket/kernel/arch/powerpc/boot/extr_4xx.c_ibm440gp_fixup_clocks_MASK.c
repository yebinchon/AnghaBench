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

/* Variables and functions */
 int CPC0_CR0_U0EC ; 
 int CPC0_CR0_U1EC ; 
 int FUNC0 (int) ; 
 int CPC0_SYS0_BYPASS ; 
 int FUNC1 (int) ; 
 int CPC0_SYS0_EXTSL ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  DCRN_CPC0_CR0 ; 
 int /*<<< orphan*/  DCRN_CPC0_SYS0 ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,unsigned int) ; 

void FUNC11(unsigned int sys_clk, unsigned int ser_clk)
{
	u32 sys0 = FUNC8(DCRN_CPC0_SYS0);
	u32 cr0 = FUNC8(DCRN_CPC0_CR0);
	u32 cpu, plb, opb, ebc, tb, uart0, uart1, m;
	u32 opdv = FUNC5(sys0);
	u32 epdv = FUNC1(sys0);

	if (sys0 & CPC0_SYS0_BYPASS) {
		/* Bypass system PLL */
		cpu = plb = sys_clk;
	} else {
		if (sys0 & CPC0_SYS0_EXTSL)
			/* PerClk */
			m = FUNC4(sys0) * opdv * epdv;
		else
			/* CPU clock */
			m = FUNC2(sys0) * FUNC3(sys0);
		cpu = sys_clk * m / FUNC3(sys0);
		plb = sys_clk * m / FUNC4(sys0);
	}

	opb = plb / opdv;
	ebc = opb / epdv;

	/* FIXME: Check if this is for all 440GP, or just Ebony */
	if ((FUNC9() & 0xf0000fff) == 0x40000440)
		/* Rev. B 440GP, use external system clock */
		tb = sys_clk;
	else
		/* Rev. C 440GP, errata force us to use internal clock */
		tb = cpu;

	if (cr0 & CPC0_CR0_U0EC)
		/* External UART clock */
		uart0 = ser_clk;
	else
		/* Internal UART clock */
		uart0 = plb / FUNC0(cr0);

	if (cr0 & CPC0_CR0_U1EC)
		/* External UART clock */
		uart1 = ser_clk;
	else
		/* Internal UART clock */
		uart1 = plb / FUNC0(cr0);

	FUNC10("PPC440GP: SysClk = %dMHz (%x)\n\r",
	       (sys_clk + 500000) / 1000000, sys_clk);

	FUNC7(cpu, tb, 0);

	FUNC6("/plb", plb);
	FUNC6("/plb/opb", opb);
	FUNC6("/plb/opb/ebc", ebc);
	FUNC6("/plb/opb/serial@40000200", uart0);
	FUNC6("/plb/opb/serial@40000300", uart1);
}