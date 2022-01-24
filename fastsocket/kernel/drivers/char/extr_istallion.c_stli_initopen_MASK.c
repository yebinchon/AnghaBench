#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  termios; } ;
struct TYPE_7__ {int data; int /*<<< orphan*/  sigvalue; int /*<<< orphan*/  signal; } ;
struct stliport {TYPE_1__ asig; int /*<<< orphan*/  sigs; int /*<<< orphan*/  state; } ;
struct stlibrd {int dummy; } ;
typedef  int /*<<< orphan*/  asysigs_t ;
typedef  TYPE_1__ asyport_t ;
typedef  TYPE_1__ asynotify_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_GETSIGNALS ; 
 int /*<<< orphan*/  A_SETNOTIFY ; 
 int /*<<< orphan*/  A_SETPORT ; 
 int /*<<< orphan*/  A_SETSIGNALS ; 
 int DT_RXBREAK ; 
 int DT_RXBUSY ; 
 int DT_TXEMPTY ; 
 int DT_TXLOW ; 
 int /*<<< orphan*/  SG_DCD ; 
 int /*<<< orphan*/  ST_GETSIGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,struct stliport*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty,
				struct stlibrd *brdp, struct stliport *portp)
{
	asynotify_t nt;
	asyport_t aport;
	int rc;

	if ((rc = FUNC6(brdp, portp, 0, 1)) < 0)
		return rc;

	FUNC0(&nt, 0, sizeof(asynotify_t));
	nt.data = (DT_TXLOW | DT_TXEMPTY | DT_RXBUSY | DT_RXBREAK);
	nt.signal = SG_DCD;
	if ((rc = FUNC2(brdp, portp, A_SETNOTIFY, &nt,
	    sizeof(asynotify_t), 0)) < 0)
		return rc;

	FUNC3(tty, portp, &aport, tty->termios);
	if ((rc = FUNC2(brdp, portp, A_SETPORT, &aport,
	    sizeof(asyport_t), 0)) < 0)
		return rc;

	FUNC1(ST_GETSIGS, &portp->state);
	if ((rc = FUNC2(brdp, portp, A_GETSIGNALS, &portp->asig,
	    sizeof(asysigs_t), 1)) < 0)
		return rc;
	if (FUNC7(ST_GETSIGS, &portp->state))
		portp->sigs = FUNC5(portp->asig.sigvalue);
	FUNC4(&portp->asig, 1, 1);
	if ((rc = FUNC2(brdp, portp, A_SETSIGNALS, &portp->asig,
	    sizeof(asysigs_t), 0)) < 0)
		return rc;

	return 0;
}