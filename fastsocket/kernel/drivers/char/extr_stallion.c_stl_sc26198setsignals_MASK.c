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
struct stlport {int /*<<< orphan*/  brdnr; int /*<<< orphan*/  pagenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPIOR ; 
 unsigned char IPR_DTR ; 
 unsigned char IPR_RTS ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC7(struct stlport *portp, int dtr, int rts)
{
	unsigned char	iopioron, iopioroff;
	unsigned long	flags;

	FUNC2("stl_sc26198setsignals(portp=%p,dtr=%d,rts=%d)\n", portp,
			dtr, rts);

	iopioron = 0;
	iopioroff = 0;
	if (dtr == 0)
		iopioroff |= IPR_DTR;
	else if (dtr > 0)
		iopioron |= IPR_DTR;
	if (rts == 0)
		iopioroff |= IPR_RTS;
	else if (rts > 0)
		iopioron |= IPR_RTS;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, IOPIOR,
		((FUNC5(portp, IOPIOR) & ~iopioroff) | iopioron));
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
}