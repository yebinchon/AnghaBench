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
 int /*<<< orphan*/  MSVR1 ; 
 unsigned char MSVR1_DTR ; 
 int /*<<< orphan*/  MSVR2 ; 
 unsigned char MSVR2_RTS ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct stlport *portp, int dtr, int rts)
{
	unsigned char	msvr1, msvr2;
	unsigned long	flags;

	FUNC2("stl_cd1400setsignals(portp=%p,dtr=%d,rts=%d)\n",
			portp, dtr, rts);

	msvr1 = 0;
	msvr2 = 0;
	if (dtr > 0)
		msvr1 = MSVR1_DTR;
	if (rts > 0)
		msvr2 = MSVR2_RTS;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC5(portp, CAR, (portp->portnr & 0x03));
	if (rts >= 0)
		FUNC5(portp, MSVR2, msvr2);
	if (dtr >= 0)
		FUNC5(portp, MSVR1, msvr1);
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
}