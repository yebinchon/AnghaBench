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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCRN_CPR0_OPBD ; 
 int /*<<< orphan*/  DCRN_CPR0_PERD ; 
 int /*<<< orphan*/  DCRN_CPR0_PLLC ; 
 int /*<<< orphan*/  DCRN_CPR0_PLLD ; 
 int /*<<< orphan*/  DCRN_CPR0_PRIMAD ; 
 int /*<<< orphan*/  DCRN_CPR0_PRIMBD ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(unsigned int sys_clk, unsigned int uart_clk)
{
	/* PLL config */
	u32 pllc  = FUNC0(DCRN_CPR0_PLLC);
	u32 plld  = FUNC0(DCRN_CPR0_PLLD);
	u32 cpud  = FUNC0(DCRN_CPR0_PRIMAD);
	u32 plbd  = FUNC0(DCRN_CPR0_PRIMBD);
	u32 opbd  = FUNC0(DCRN_CPR0_OPBD);
	u32 perd  = FUNC0(DCRN_CPR0_PERD);

	/* Dividers */
	u32 fbdv   = FUNC4(FUNC1((plld >> 24) & 0xff, 1));

	u32 fwdva  = FUNC5(FUNC1((plld >> 16) & 0x0f, 1));

	u32 cpudv0 = FUNC1((cpud >> 24) & 7, 8);

	/* PLBDV0 is hardwared to 010. */
	u32 plbdv0 = 2;
	u32 plb2xdv0 = FUNC1((plbd >> 16) & 7, 8);

	u32 opbdv0 = FUNC1((opbd >> 24) & 3, 4);

	u32 perdv0 = FUNC1((perd >> 24) & 3, 4);

	/* Resulting clocks */
	u32 cpu, plb, opb, ebc, vco, tb, uart0, uart1;

	/* PLL's VCO is the source for primary forward ? */
	if (pllc & 0x40000000) {
		u32 m;

		/* Feedback path */
		switch ((pllc >> 24) & 7) {
		case 0:
			/* PLLOUTx */
			m = fbdv;
			break;
		case 1:
			/* CPU */
			m = fbdv * fwdva * cpudv0;
			break;
		case 5:
			/* PERClk */
			m = fbdv * fwdva * plb2xdv0 * plbdv0 * opbdv0 * perdv0;
			break;
		default:
			FUNC6("WARNING ! Invalid PLL feedback source !\n");
			goto bypass;
		}

		vco = (unsigned int)(sys_clk * m);
	} else {
bypass:
		/* Bypass system PLL */
		vco = 0;
	}

	/* CPU = VCO / ( FWDVA x CPUDV0) */
	cpu = vco / (fwdva * cpudv0);
	/* PLB = VCO / ( FWDVA x PLB2XDV0 x PLBDV0) */
	plb = vco / (fwdva * plb2xdv0 * plbdv0);
	/* OPB = PLB / OPBDV0 */
	opb = plb / opbdv0;
	/* EBC = OPB / PERDV0 */
	ebc = opb / perdv0;

	tb = cpu;
	uart0 = uart1 = uart_clk;

	FUNC3(cpu, tb, 0);
	FUNC2("/plb", plb);
	FUNC2("/plb/opb", opb);
	FUNC2("/plb/opb/ebc", ebc);
	FUNC2("/plb/opb/serial@ef600200", uart0);
	FUNC2("/plb/opb/serial@ef600300", uart1);
}