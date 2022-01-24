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
 unsigned char MSVR1_CTS ; 
 unsigned char MSVR1_DCD ; 
 unsigned char MSVR1_DSR ; 
 unsigned char MSVR1_DTR ; 
 unsigned char MSVR1_RI ; 
 int /*<<< orphan*/  MSVR2 ; 
 unsigned char MSVR2_RTS ; 
 int TIOCM_CD ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RI ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct stlport *portp)
{
	unsigned char	msvr1, msvr2;
	unsigned long	flags;
	int		sigs;

	FUNC2("stl_cd1400getsignals(portp=%p)\n", portp);

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, CAR, (portp->portnr & 0x03));
	msvr1 = FUNC5(portp, MSVR1);
	msvr2 = FUNC5(portp, MSVR2);
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);

	sigs = 0;
	sigs |= (msvr1 & MSVR1_DCD) ? TIOCM_CD : 0;
	sigs |= (msvr1 & MSVR1_CTS) ? TIOCM_CTS : 0;
	sigs |= (msvr1 & MSVR1_DTR) ? TIOCM_DTR : 0;
	sigs |= (msvr2 & MSVR2_RTS) ? TIOCM_RTS : 0;
#if 0
	sigs |= (msvr1 & MSVR1_RI) ? TIOCM_RI : 0;
	sigs |= (msvr1 & MSVR1_DSR) ? TIOCM_DSR : 0;
#else
	sigs |= TIOCM_DSR;
#endif
	return sigs;
}