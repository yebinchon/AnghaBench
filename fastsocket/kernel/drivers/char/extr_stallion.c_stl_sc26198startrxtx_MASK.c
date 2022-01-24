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
struct stlport {unsigned char imr; int /*<<< orphan*/  istate; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYI_TXBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMR ; 
 unsigned char IR_RXBREAK ; 
 unsigned char IR_RXRDY ; 
 unsigned char IR_RXWATCHDOG ; 
 unsigned char IR_TXRDY ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC7(struct stlport *portp, int rx, int tx)
{
	unsigned char	imr;
	unsigned long	flags;

	FUNC2("stl_sc26198startrxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx, tx);

	imr = portp->imr;
	if (tx == 0)
		imr &= ~IR_TXRDY;
	else if (tx == 1)
		imr |= IR_TXRDY;
	if (rx == 0)
		imr &= ~(IR_RXRDY | IR_RXBREAK | IR_RXWATCHDOG);
	else if (rx > 0)
		imr |= IR_RXRDY | IR_RXBREAK | IR_RXWATCHDOG;

	FUNC4(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, IMR, imr);
	FUNC0(portp->brdnr);
	portp->imr = imr;
	if (tx > 0)
		FUNC3(ASYI_TXBUSY, &portp->istate);
	FUNC5(&brd_lock, flags);
}