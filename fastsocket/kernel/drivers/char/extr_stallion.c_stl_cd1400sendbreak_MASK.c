#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  txbreaks; } ;
struct stlport {int portnr; int brklen; TYPE_1__ stats; int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAR ; 
 int /*<<< orphan*/  SRER ; 
 int SRER_TXDATA ; 
 int SRER_TXEMPTY ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct stlport *portp, int len)
{
	unsigned long	flags;

	FUNC2("stl_cd1400sendbreak(portp=%p,len=%d)\n", portp, len);

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, CAR, (portp->portnr & 0x03));
	FUNC6(portp, SRER,
		((FUNC5(portp, SRER) & ~SRER_TXDATA) |
		SRER_TXEMPTY));
	FUNC0(portp->brdnr);
	portp->brklen = len;
	if (len == 1)
		portp->stats.txbreaks++;
	FUNC4(&brd_lock, flags);
}