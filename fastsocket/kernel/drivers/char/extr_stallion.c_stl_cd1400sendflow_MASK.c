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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxxoff; int /*<<< orphan*/  rxxon; } ;
struct stlport {int portnr; int /*<<< orphan*/  brdnr; TYPE_1__ stats; int /*<<< orphan*/  pagenr; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAR ; 
 int /*<<< orphan*/  CCR ; 
 int CCR_SENDSCHR1 ; 
 int CCR_SENDSCHR2 ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 struct tty_struct* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct stlport *portp, int state)
{
	struct tty_struct	*tty;
	unsigned long		flags;

	FUNC2("stl_cd1400sendflow(portp=%p,state=%x)\n", portp, state);

	if (portp == NULL)
		return;
	tty = FUNC8(&portp->port);
	if (tty == NULL)
		return;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC6(portp, CAR, (portp->portnr & 0x03));
	if (state) {
		FUNC5(portp);
		FUNC6(portp, CCR, CCR_SENDSCHR1);
		portp->stats.rxxon++;
		FUNC5(portp);
	} else {
		FUNC5(portp);
		FUNC6(portp, CCR, CCR_SENDSCHR2);
		portp->stats.rxxoff++;
		FUNC5(portp);
	}
	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
	FUNC7(tty);
}