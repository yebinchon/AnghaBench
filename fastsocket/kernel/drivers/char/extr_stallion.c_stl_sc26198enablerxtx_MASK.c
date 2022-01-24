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
struct stlport {unsigned char crenable; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char CR_RXENABLE ; 
 unsigned char CR_TXENABLE ; 
 int /*<<< orphan*/  SCCR ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct stlport *portp, int rx, int tx)
{
	unsigned char	ccr;
	unsigned long	flags;

	FUNC2("stl_sc26198enablerxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx,tx);

	ccr = portp->crenable;
	if (tx == 0)
		ccr &= ~CR_TXENABLE;
	else if (tx > 0)
		ccr |= CR_TXENABLE;
	if (rx == 0)
		ccr &= ~CR_RXENABLE;
	else if (rx > 0)
		ccr |= CR_RXENABLE;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC5(portp, SCCR, ccr);
	FUNC0(portp->brdnr);
	portp->crenable = ccr;
	FUNC4(&brd_lock, flags);
}