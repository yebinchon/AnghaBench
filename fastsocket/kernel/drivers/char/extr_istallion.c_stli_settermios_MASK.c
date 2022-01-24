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
struct tty_struct {scalar_t__ hw_stopped; struct ktermios* termios; struct stliport* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_wait; } ;
struct stliport {size_t brdnr; TYPE_1__ port; int /*<<< orphan*/  asig; } ;
struct stlibrd {int dummy; } ;
struct ktermios {int c_cflag; } ;
typedef  int /*<<< orphan*/  asysigs_t ;
typedef  int /*<<< orphan*/  asyport_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SETPORT ; 
 int /*<<< orphan*/  A_SETSIGNALS ; 
 int CBAUD ; 
 int CLOCAL ; 
 int CRTSCTS ; 
 struct stlibrd** stli_brds ; 
 int /*<<< orphan*/  FUNC0 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct stliport*,int /*<<< orphan*/ *,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 size_t stli_nrbrds ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, struct ktermios *old)
{
	struct stliport *portp;
	struct stlibrd *brdp;
	struct ktermios *tiosp;
	asyport_t aport;

	portp = tty->driver_data;
	if (portp == NULL)
		return;
	if (portp->brdnr >= stli_nrbrds)
		return;
	brdp = stli_brds[portp->brdnr];
	if (brdp == NULL)
		return;

	tiosp = tty->termios;

	FUNC1(tty, portp, &aport, tiosp);
	FUNC0(brdp, portp, A_SETPORT, &aport, sizeof(asyport_t), 0);
	FUNC2(&portp->asig, ((tiosp->c_cflag & CBAUD) ? 1 : 0), -1);
	FUNC0(brdp, portp, A_SETSIGNALS, &portp->asig,
		sizeof(asysigs_t), 0);
	if ((old->c_cflag & CRTSCTS) && ((tiosp->c_cflag & CRTSCTS) == 0))
		tty->hw_stopped = 0;
	if (((old->c_cflag & CLOCAL) == 0) && (tiosp->c_cflag & CLOCAL))
		FUNC3(&portp->port.open_wait);
}