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
 int /*<<< orphan*/  IPR ; 
 unsigned char IPR_CTS ; 
 unsigned char IPR_DCD ; 
 unsigned char IPR_DTR ; 
 unsigned char IPR_RTS ; 
 int TIOCM_CD ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct stlport *portp)
{
	unsigned char	ipr;
	unsigned long	flags;
	int		sigs;

	FUNC2("stl_sc26198getsignals(portp=%p)\n", portp);

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	ipr = FUNC5(portp, IPR);
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);

	sigs = 0;
	sigs |= (ipr & IPR_DCD) ? 0 : TIOCM_CD;
	sigs |= (ipr & IPR_CTS) ? 0 : TIOCM_CTS;
	sigs |= (ipr & IPR_DTR) ? 0: TIOCM_DTR;
	sigs |= (ipr & IPR_RTS) ? 0: TIOCM_RTS;
	sigs |= TIOCM_DSR;
	return sigs;
}