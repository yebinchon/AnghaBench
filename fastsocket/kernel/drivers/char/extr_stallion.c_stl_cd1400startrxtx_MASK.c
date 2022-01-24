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
struct stlport {int portnr; int /*<<< orphan*/  istate; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYI_TXBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAR ; 
 int /*<<< orphan*/  SRER ; 
 unsigned char SRER_RXDATA ; 
 unsigned char SRER_TXDATA ; 
 unsigned char SRER_TXEMPTY ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC6 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC8(struct stlport *portp, int rx, int tx)
{
	unsigned char	sreron, sreroff;
	unsigned long	flags;

	FUNC2("stl_cd1400startrxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx, tx);

	sreron = 0;
	sreroff = 0;
	if (tx == 0)
		sreroff |= (SRER_TXDATA | SRER_TXEMPTY);
	else if (tx == 1)
		sreron |= SRER_TXDATA;
	else if (tx >= 2)
		sreron |= SRER_TXEMPTY;
	if (rx == 0)
		sreroff |= SRER_RXDATA;
	else if (rx > 0)
		sreron |= SRER_RXDATA;

	FUNC4(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC7(portp, CAR, (portp->portnr & 0x03));
	FUNC7(portp, SRER,
		((FUNC6(portp, SRER) & ~sreroff) | sreron));
	FUNC0(portp->brdnr);
	if (tx > 0)
		FUNC3(ASYI_TXBUSY, &portp->istate);
	FUNC5(&brd_lock, flags);
}