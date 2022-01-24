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
struct zilog_channel {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 unsigned char ALL_SNT ; 
 unsigned char BRENAB ; 
 int /*<<< orphan*/  ERR_RES ; 
 unsigned char EXT_INT_ENAB ; 
 size_t R0 ; 
 size_t R1 ; 
 size_t R10 ; 
 size_t R11 ; 
 size_t R12 ; 
 size_t R13 ; 
 size_t R14 ; 
 size_t R15 ; 
 size_t R3 ; 
 size_t R4 ; 
 size_t R5 ; 
 size_t R6 ; 
 size_t R7 ; 
 unsigned char RES_EXT_INT ; 
 unsigned char RxENAB ; 
 unsigned char RxINT_MASK ; 
 unsigned char TxENAB ; 
 unsigned char TxINT_ENAB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct zilog_channel*) ; 
 unsigned char FUNC3 (struct zilog_channel*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct zilog_channel*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct zilog_channel *channel, unsigned char *regs)
{
	int i;

	/* Let pending transmits finish.  */
	for (i = 0; i < 1000; i++) {
		unsigned char stat = FUNC3(channel, R1);
		if (stat & ALL_SNT)
			break;
		FUNC4(100);
	}

	FUNC6(ERR_RES, &channel->control);
	FUNC0();
	FUNC1(channel);

	FUNC2(channel);

	/* Disable all interrupts.  */
	FUNC5(channel, R1,
		    regs[R1] & ~(RxINT_MASK | TxINT_ENAB | EXT_INT_ENAB));

	/* Set parity, sync config, stop bits, and clock divisor.  */
	FUNC5(channel, R4, regs[R4]);

	/* Set misc. TX/RX control bits.  */
	FUNC5(channel, R10, regs[R10]);

	/* Set TX/RX controls sans the enable bits.  */
	FUNC5(channel, R3, regs[R3] & ~RxENAB);
	FUNC5(channel, R5, regs[R5] & ~TxENAB);

	/* Synchronous mode config.  */
	FUNC5(channel, R6, regs[R6]);
	FUNC5(channel, R7, regs[R7]);

	/* Don't mess with the interrupt vector (R2, unused by us) and
	 * master interrupt control (R9).  We make sure this is setup
	 * properly at probe time then never touch it again.
	 */

	/* Disable baud generator.  */
	FUNC5(channel, R14, regs[R14] & ~BRENAB);

	/* Clock mode control.  */
	FUNC5(channel, R11, regs[R11]);

	/* Lower and upper byte of baud rate generator divisor.  */
	FUNC5(channel, R12, regs[R12]);
	FUNC5(channel, R13, regs[R13]);

	/* Now rewrite R14, with BRENAB (if set).  */
	FUNC5(channel, R14, regs[R14]);

	/* External status interrupt control.  */
	FUNC5(channel, R15, regs[R15]);

	/* Reset external status interrupts.  */
	FUNC5(channel, R0, RES_EXT_INT);
	FUNC5(channel, R0, RES_EXT_INT);

	/* Rewrite R3/R5, this time without enables masked.  */
	FUNC5(channel, R3, regs[R3]);
	FUNC5(channel, R5, regs[R5]);

	/* Rewrite R1, this time without IRQ enabled masked.  */
	FUNC5(channel, R1, regs[R1]);
}