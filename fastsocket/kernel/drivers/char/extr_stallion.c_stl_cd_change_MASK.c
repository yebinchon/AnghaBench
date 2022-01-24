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
struct TYPE_2__ {int flags; int /*<<< orphan*/  open_wait; } ;
struct stlport {unsigned int sigs; TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_CHECK_CD ; 
 unsigned int TIOCM_CD ; 
 unsigned int FUNC0 (struct stlport*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 struct tty_struct* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct stlport *portp)
{
	unsigned int oldsigs = portp->sigs;
	struct tty_struct *tty = FUNC3(&portp->port);

	if (!tty)
		return;

	portp->sigs = FUNC0(portp);

	if ((portp->sigs & TIOCM_CD) && ((oldsigs & TIOCM_CD) == 0))
		FUNC4(&portp->port.open_wait);

	if ((oldsigs & TIOCM_CD) && ((portp->sigs & TIOCM_CD) == 0))
		if (portp->port.flags & ASYNC_CHECK_CD)
			FUNC1(tty);
	FUNC2(tty);
}