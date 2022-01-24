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
struct stlport {int portnr; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAR ; 
 int /*<<< orphan*/  CCR ; 
 unsigned char CCR_RXDISABLE ; 
 unsigned char CCR_RXENABLE ; 
 unsigned char CCR_TXDISABLE ; 
 unsigned char CCR_TXENABLE ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC7(struct stlport *portp, int rx, int tx)
{
	unsigned char	ccr;
	unsigned long	flags;

	FUNC2("stl_cd1400enablerxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx, tx);

	ccr = 0;

	if (tx == 0)
		ccr |= CCR_TXDISABLE;
	else if (tx > 0)
		ccr |= CCR_TXENABLE;
	if (rx == 0)
		ccr |= CCR_RXDISABLE;
	else if (rx > 0)
		ccr |= CCR_RXENABLE;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, CAR, (portp->portnr & 0x03));
	FUNC5(portp);
	FUNC6(portp, CCR, ccr);
	FUNC5(portp);
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
}