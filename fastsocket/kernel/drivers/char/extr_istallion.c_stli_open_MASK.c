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
struct tty_struct {unsigned int index; int /*<<< orphan*/  flags; struct stliport* driver_data; } ;
struct tty_port {int flags; int /*<<< orphan*/  count; } ;
struct stliport {int devnr; struct tty_port port; int /*<<< orphan*/  raw_wait; int /*<<< orphan*/  state; } ;
struct stlibrd {int state; unsigned int nrports; struct stliport** ports; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int BST_STARTED ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  ST_INITIALIZING ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct stlibrd** stli_brds ; 
 int FUNC5 (struct tty_struct*,struct stlibrd*,struct stliport*) ; 
 unsigned int stli_nrbrds ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct tty_port*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct tty_struct *tty, struct file *filp)
{
	struct stlibrd *brdp;
	struct stliport *portp;
	struct tty_port *port;
	unsigned int minordev, brdnr, portnr;
	int rc;

	minordev = tty->index;
	brdnr = FUNC0(minordev);
	if (brdnr >= stli_nrbrds)
		return -ENODEV;
	brdp = stli_brds[brdnr];
	if (brdp == NULL)
		return -ENODEV;
	if ((brdp->state & BST_STARTED) == 0)
		return -ENODEV;
	portnr = FUNC1(minordev);
	if (portnr > brdp->nrports)
		return -ENODEV;

	portp = brdp->ports[portnr];
	if (portp == NULL)
		return -ENODEV;
	if (portp->devnr < 1)
		return -ENODEV;
	port = &portp->port;

/*
 *	On the first open of the device setup the port hardware, and
 *	initialize the per port data structure. Since initializing the port
 *	requires several commands to the board we will need to wait for any
 *	other open that is already initializing the port.
 *
 *	Review - locking
 */
	FUNC8(port, tty);
	tty->driver_data = portp;
	port->count++;

	FUNC9(portp->raw_wait,
			!FUNC6(ST_INITIALIZING, &portp->state));
	if (FUNC4(current))
		return -ERESTARTSYS;

	if ((portp->port.flags & ASYNC_INITIALIZED) == 0) {
		FUNC3(ST_INITIALIZING, &portp->state);
		if ((rc = FUNC5(tty, brdp, portp)) >= 0) {
			/* Locking */
			port->flags |= ASYNC_INITIALIZED;
			FUNC2(TTY_IO_ERROR, &tty->flags);
		}
		FUNC2(ST_INITIALIZING, &portp->state);
		FUNC10(&portp->raw_wait);
		if (rc < 0)
			return rc;
	}
	return FUNC7(&portp->port, tty, filp);
}