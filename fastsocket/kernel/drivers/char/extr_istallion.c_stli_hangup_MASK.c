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
struct tty_struct {int /*<<< orphan*/  flags; TYPE_1__* termios; struct stliport* driver_data; } ;
struct tty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct stliport {size_t brdnr; int /*<<< orphan*/  state; int /*<<< orphan*/  asig; struct tty_port port; } ;
struct stlibrd {int dummy; } ;
typedef  int /*<<< orphan*/  asysigs_t ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  A_SETSIGNALSF ; 
 int HUPCL ; 
 int /*<<< orphan*/  ST_CLOSING ; 
 int /*<<< orphan*/  ST_CMDING ; 
 int /*<<< orphan*/  ST_DOFLUSHRX ; 
 int /*<<< orphan*/  ST_DOFLUSHTX ; 
 int /*<<< orphan*/  ST_DOSIGS ; 
 int /*<<< orphan*/  ST_RXSTOP ; 
 int /*<<< orphan*/  ST_TXBUSY ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct stlibrd** stli_brds ; 
 int /*<<< orphan*/  stli_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t stli_nrbrds ; 
 int /*<<< orphan*/  FUNC5 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_port*) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty)
{
	struct stliport *portp;
	struct stlibrd *brdp;
	struct tty_port *port;
	unsigned long flags;

	portp = tty->driver_data;
	if (portp == NULL)
		return;
	if (portp->brdnr >= stli_nrbrds)
		return;
	brdp = stli_brds[portp->brdnr];
	if (brdp == NULL)
		return;
	port = &portp->port;

	FUNC2(&port->lock, flags);
	port->flags &= ~ASYNC_INITIALIZED;
	FUNC3(&port->lock, flags);

	if (!FUNC7(ST_CLOSING, &portp->state))
		FUNC5(brdp, portp, 0, 0);

	FUNC2(&stli_lock, flags);
	if (tty->termios->c_cflag & HUPCL) {
		FUNC4(&portp->asig, 0, 0);
		if (FUNC7(ST_CMDING, &portp->state)) {
			FUNC1(ST_DOSIGS, &portp->state);
			FUNC1(ST_DOFLUSHTX, &portp->state);
			FUNC1(ST_DOFLUSHRX, &portp->state);
		} else {
			FUNC6(brdp, portp, A_SETSIGNALSF,
				&portp->asig, sizeof(asysigs_t), 0);
		}
	}

	FUNC0(ST_TXBUSY, &portp->state);
	FUNC0(ST_RXSTOP, &portp->state);
	FUNC1(TTY_IO_ERROR, &tty->flags);
	FUNC3(&stli_lock, flags);

	FUNC8(port);
}