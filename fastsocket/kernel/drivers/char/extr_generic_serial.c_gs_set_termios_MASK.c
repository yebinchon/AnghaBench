#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct ktermios* termios; scalar_t__ stopped; struct gs_port* driver_data; } ;
struct ktermios {scalar_t__ c_iflag; scalar_t__ c_oflag; int c_cflag; scalar_t__ c_lflag; scalar_t__ c_line; int /*<<< orphan*/  c_cc; } ;
struct TYPE_6__ {int /*<<< orphan*/  open_wait; } ;
struct TYPE_4__ {int flags; struct tty_struct* tty; } ;
struct gs_port {int baud_base; int custom_divisor; int baud; int wakeup_chars; TYPE_3__ gs; TYPE_2__* rd; TYPE_1__ port; } ;
struct TYPE_5__ {int (* set_real_termios ) (struct gs_port*) ;} ;

/* Variables and functions */
 int ASYNC_SPD_CUST ; 
 int ASYNC_SPD_HI ; 
 int ASYNC_SPD_MASK ; 
 int ASYNC_SPD_SHI ; 
 int ASYNC_SPD_VHI ; 
 int ASYNC_SPD_WARP ; 
 int B38400 ; 
 int CBAUD ; 
 int CLOCAL ; 
 int CRTSCTS ; 
 int GS_DEBUG_TERMIOS ; 
 int HZ ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  NCC ; 
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int gs_debug ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int FUNC4 (struct gs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct gs_port*) ; 
 int FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10 (struct tty_struct * tty, 
                     struct ktermios * old_termios)
{
	struct gs_port *port;
	int baudrate, tmp, rv;
	struct ktermios *tiosp;

	FUNC0();

	port = tty->driver_data;

	if (!port) return;
	if (!port->port.tty) {
		/* This seems to happen when this is called after gs_close. */
		FUNC2 (GS_DEBUG_TERMIOS, "gs: Odd: port->port.tty is NULL\n");
		port->port.tty = tty;
	}


	tiosp = tty->termios;

	if (gs_debug & GS_DEBUG_TERMIOS) {
		FUNC2 (GS_DEBUG_TERMIOS, "termios structure (%p):\n", tiosp);
	}

	if(old_termios && (gs_debug & GS_DEBUG_TERMIOS)) {
		if(tiosp->c_iflag != old_termios->c_iflag)  FUNC6("c_iflag changed\n");
		if(tiosp->c_oflag != old_termios->c_oflag)  FUNC6("c_oflag changed\n");
		if(tiosp->c_cflag != old_termios->c_cflag)  FUNC6("c_cflag changed\n");
		if(tiosp->c_lflag != old_termios->c_lflag)  FUNC6("c_lflag changed\n");
		if(tiosp->c_line  != old_termios->c_line)   FUNC6("c_line changed\n");
		if(!FUNC5(tiosp->c_cc, old_termios->c_cc, NCC)) FUNC6("c_cc changed\n");
	}

	baudrate = FUNC8(tty);

	if ((tiosp->c_cflag & CBAUD) == B38400) {
		if (     (port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_HI)
			baudrate = 57600;
		else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_VHI)
			baudrate = 115200;
		else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_SHI)
			baudrate = 230400;
		else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_WARP)
			baudrate = 460800;
		else if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST)
			baudrate = (port->baud_base / port->custom_divisor);
	}

	/* I recommend using THIS instead of the mess in termios (and
	   duplicating the above code). Next we should create a clean
	   interface towards this variable. If your card supports arbitrary
	   baud rates, (e.g. CD1400 or 16550 based cards) then everything
	   will be very easy..... */
	port->baud = baudrate;

	/* Two timer ticks seems enough to wakeup something like SLIP driver */
	/* Baudrate/10 is cps. Divide by HZ to get chars per tick. */
	tmp = (baudrate / 10 / HZ) * 2;			 

	if (tmp <                 0) tmp = 0;
	if (tmp >= SERIAL_XMIT_SIZE) tmp = SERIAL_XMIT_SIZE-1;

	port->wakeup_chars = tmp;

	/* We should really wait for the characters to be all sent before
	   changing the settings. -- CAL */
	rv = FUNC4 (port, MAX_SCHEDULE_TIMEOUT);
	if (rv < 0) return /* rv */;

	rv = port->rd->set_real_termios(port);
	if (rv < 0) return /* rv */;

	if ((!old_termios || 
	     (old_termios->c_cflag & CRTSCTS)) &&
	    !(      tiosp->c_cflag & CRTSCTS)) {
		tty->stopped = 0;
		FUNC3(tty);
	}

#ifdef tytso_patch_94Nov25_1726
	/* This "makes sense", Why is it commented out? */

	if (!(old_termios->c_cflag & CLOCAL) &&
	    (tty->termios->c_cflag & CLOCAL))
		wake_up_interruptible(&port->gs.open_wait);
#endif

	FUNC1();
	return /* 0 */;
}