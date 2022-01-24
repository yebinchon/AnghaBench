#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* termios; struct Port* driver_data; } ;
struct file {int f_flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  open_wait; struct tty_struct* tty; int /*<<< orphan*/  count; } ;
struct TYPE_13__ {TYPE_2__ port; int /*<<< orphan*/  xmit_cnt; } ;
struct Port {size_t RupNum; int State; int Config; int PortState; int ModemState; int /*<<< orphan*/  portSem; int /*<<< orphan*/  opens; scalar_t__ statsGather; TYPE_6__ gs; int /*<<< orphan*/  InUse; scalar_t__ CookMode; int /*<<< orphan*/  firstOpen; int /*<<< orphan*/  Mapped; int /*<<< orphan*/  WaitUntilBooted; TYPE_4__* HostP; } ;
struct TYPE_12__ {scalar_t__ RIOHalted; struct Port** RIOPortp; scalar_t__ RIOFailed; } ;
struct TYPE_11__ {int Flags; TYPE_3__* Mapping; } ;
struct TYPE_10__ {int Flags; } ;
struct TYPE_8__ {int c_cflag; } ;

/* Variables and functions */
 int CLOCAL ; 
 int EINTR ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  HUNDRED_MS ; 
 int /*<<< orphan*/  NOT_INUSE ; 
 int /*<<< orphan*/  OK_TO_SLEEP ; 
 int O_NONBLOCK ; 
 int PORT_ISOPEN ; 
 int RC_RUNNING ; 
 int /*<<< orphan*/  RIOC_FCLOSE ; 
 int RIOC_MSVR1_CD ; 
 int /*<<< orphan*/  RIOC_OPEN ; 
 scalar_t__ FUNC0 (struct Port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Port*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,struct Port*,int /*<<< orphan*/ ) ; 
 int RIO_CARR_ON ; 
 int RIO_CLOSING ; 
 int RIO_CTSFLOW ; 
 int /*<<< orphan*/  RIO_DEBUG_TTY ; 
 scalar_t__ RIO_FAIL ; 
 int RIO_LOPEN ; 
 int RIO_MOPEN ; 
 unsigned int RIO_PORTS ; 
 int RIO_RTSFLOW ; 
 int RIO_WOPEN ; 
 int RTA_BOOTED ; 
 int RUN_STATE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (TYPE_6__*) ; 
 TYPE_5__* p ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct tty_struct *tty, struct file *filp)
{
	unsigned int SysPort;
	int repeat_this = 250;
	struct Port *PortP;	/* pointer to the port structure */
	unsigned long flags;
	int retval = 0;

	FUNC3();

	/* Make sure driver_data is NULL in case the rio isn't booted jet. Else gs_close
	   is going to oops.
	 */
	tty->driver_data = NULL;

	SysPort = FUNC7(tty);

	if (p->RIOFailed) {
		FUNC6(RIO_DEBUG_TTY, "System initialisation failed\n");
		FUNC4();
		return -ENXIO;
	}

	FUNC6(RIO_DEBUG_TTY, "port open SysPort %d (mapped:%d)\n", SysPort, p->RIOPortp[SysPort]->Mapped);

	/*
	 ** Validate that we have received a legitimate request.
	 ** Currently, just check that we are opening a port on
	 ** a host card that actually exists, and that the port
	 ** has been mapped onto a host.
	 */
	if (SysPort >= RIO_PORTS) {	/* out of range ? */
		FUNC6(RIO_DEBUG_TTY, "Illegal port number %d\n", SysPort);
		FUNC4();
		return -ENXIO;
	}

	/*
	 ** Grab pointer to the port stucture
	 */
	PortP = p->RIOPortp[SysPort];	/* Get control struc */
	FUNC6(RIO_DEBUG_TTY, "PortP: %p\n", PortP);
	if (!PortP->Mapped) {	/* we aren't mapped yet! */
		/*
		 ** The system doesn't know which RTA this port
		 ** corresponds to.
		 */
		FUNC6(RIO_DEBUG_TTY, "port not mapped into system\n");
		FUNC4();
		return -ENXIO;
	}

	tty->driver_data = PortP;

	PortP->gs.port.tty = tty;
	PortP->gs.port.count++;

	FUNC6(RIO_DEBUG_TTY, "%d bytes in tx buffer\n", PortP->gs.xmit_cnt);

	retval = FUNC5(&PortP->gs);
	if (retval) {
		PortP->gs.port.count--;
		return -ENXIO;
	}
	/*
	 ** If the host hasn't been booted yet, then
	 ** fail
	 */
	if ((PortP->HostP->Flags & RUN_STATE) != RC_RUNNING) {
		FUNC6(RIO_DEBUG_TTY, "Host not running\n");
		FUNC4();
		return -ENXIO;
	}

	/*
	 ** If the RTA has not booted yet and the user has choosen to block
	 ** until the RTA is present then we must spin here waiting for
	 ** the RTA to boot.
	 */
	/* I find the above code a bit hairy. I find the below code
	   easier to read and shorter. Now, if it works too that would
	   be great... -- REW 
	 */
	FUNC6(RIO_DEBUG_TTY, "Checking if RTA has booted... \n");
	while (!(PortP->HostP->Mapping[PortP->RupNum].Flags & RTA_BOOTED)) {
		if (!PortP->WaitUntilBooted) {
			FUNC6(RIO_DEBUG_TTY, "RTA never booted\n");
			FUNC4();
			return -ENXIO;
		}

		/* Under Linux you'd normally use a wait instead of this
		   busy-waiting. I'll stick with the old implementation for
		   now. --REW
		 */
		if (FUNC0(PortP, HUNDRED_MS) == RIO_FAIL) {
			FUNC6(RIO_DEBUG_TTY, "RTA_wait_for_boot: EINTR in delay \n");
			FUNC4();
			return -EINTR;
		}
		if (repeat_this-- <= 0) {
			FUNC6(RIO_DEBUG_TTY, "Waiting for RTA to boot timeout\n");
			FUNC4();
			return -EIO;
		}
	}
	FUNC6(RIO_DEBUG_TTY, "RTA has been booted\n");
	FUNC8(&PortP->portSem, flags);
	if (p->RIOHalted) {
		goto bombout;
	}

	/*
	 ** If the port is in the final throws of being closed,
	 ** we should wait here (politely), waiting
	 ** for it to finish, so that it doesn't close us!
	 */
	while ((PortP->State & RIO_CLOSING) && !p->RIOHalted) {
		FUNC6(RIO_DEBUG_TTY, "Waiting for RIO_CLOSING to go away\n");
		if (repeat_this-- <= 0) {
			FUNC6(RIO_DEBUG_TTY, "Waiting for not idle closed broken by signal\n");
			FUNC2(p, PortP, RIOC_FCLOSE);
			retval = -EINTR;
			goto bombout;
		}
		FUNC9(&PortP->portSem, flags);
		if (FUNC0(PortP, HUNDRED_MS) == RIO_FAIL) {
			FUNC8(&PortP->portSem, flags);
			retval = -EINTR;
			goto bombout;
		}
		FUNC8(&PortP->portSem, flags);
	}

	if (!PortP->Mapped) {
		FUNC6(RIO_DEBUG_TTY, "Port unmapped while closing!\n");
		FUNC9(&PortP->portSem, flags);
		retval = -ENXIO;
		FUNC4();
		return retval;
	}

	if (p->RIOHalted) {
		goto bombout;
	}

/*
** 15.10.1998 ARG - ESIL 0761 part fix
** RIO has it's own CTSFLOW and RTSFLOW flags in 'Config' in the port structure,
** we need to make sure that the flags are clear when the port is opened.
*/
	/* Uh? Suppose I turn these on and then another process opens
	   the port again? The flags get cleared! Not good. -- REW */
	if (!(PortP->State & (RIO_LOPEN | RIO_MOPEN))) {
		PortP->Config &= ~(RIO_CTSFLOW | RIO_RTSFLOW);
	}

	if (!(PortP->firstOpen)) {	/* First time ? */
		FUNC6(RIO_DEBUG_TTY, "First open for this port\n");


		PortP->firstOpen++;
		PortP->CookMode = 0;	/* XXX RIOCookMode(tp); */
		PortP->InUse = NOT_INUSE;

		/* Tentative fix for bug PR27. Didn't work. */
		/* PortP->gs.xmit_cnt = 0; */

		FUNC9(&PortP->portSem, flags);

		/* Someone explain to me why this delay/config is
		   here. If I read the docs correctly the "open"
		   command piggybacks the parameters immediately.
		   -- REW */
		FUNC1(PortP, RIOC_OPEN, 1, OK_TO_SLEEP); /* Open the port */
		FUNC8(&PortP->portSem, flags);

		/*
		 ** wait for the port to be not closed.
		 */
		while (!(PortP->PortState & PORT_ISOPEN) && !p->RIOHalted) {
			FUNC6(RIO_DEBUG_TTY, "Waiting for PORT_ISOPEN-currently %x\n", PortP->PortState);
			FUNC9(&PortP->portSem, flags);
			if (FUNC0(PortP, HUNDRED_MS) == RIO_FAIL) {
				FUNC6(RIO_DEBUG_TTY, "Waiting for open to finish broken by signal\n");
				FUNC2(p, PortP, RIOC_FCLOSE);
				FUNC4();
				return -EINTR;
			}
			FUNC8(&PortP->portSem, flags);
		}

		if (p->RIOHalted) {
			retval = -EIO;
		      bombout:
			/*                    RIOClearUp( PortP ); */
			FUNC9(&PortP->portSem, flags);
			return retval;
		}
		FUNC6(RIO_DEBUG_TTY, "PORT_ISOPEN found\n");
	}
	FUNC6(RIO_DEBUG_TTY, "Modem - test for carrier\n");
	/*
	 ** ACTION
	 ** insert test for carrier here. -- ???
	 ** I already see that test here. What's the deal? -- REW
	 */
	if ((PortP->gs.port.tty->termios->c_cflag & CLOCAL) ||
			(PortP->ModemState & RIOC_MSVR1_CD)) {
		FUNC6(RIO_DEBUG_TTY, "open(%d) Modem carr on\n", SysPort);
		/*
		   tp->tm.c_state |= CARR_ON;
		   wakeup((caddr_t) &tp->tm.c_canq);
		 */
		PortP->State |= RIO_CARR_ON;
		FUNC10(&PortP->gs.port.open_wait);
	} else {	/* no carrier - wait for DCD */
			/*
		   while (!(PortP->gs.port.tty->termios->c_state & CARR_ON) &&
		   !(filp->f_flags & O_NONBLOCK) && !p->RIOHalted )
		 */
		while (!(PortP->State & RIO_CARR_ON) && !(filp->f_flags & O_NONBLOCK) && !p->RIOHalted) {
				FUNC6(RIO_DEBUG_TTY, "open(%d) sleeping for carr on\n", SysPort);
			/*
			   PortP->gs.port.tty->termios->c_state |= WOPEN;
			 */
			PortP->State |= RIO_WOPEN;
			FUNC9(&PortP->portSem, flags);
			if (FUNC0(PortP, HUNDRED_MS) == RIO_FAIL) {
				FUNC8(&PortP->portSem, flags);
				/*
				 ** ACTION: verify that this is a good thing
				 ** to do here. -- ???
				 ** I think it's OK. -- REW
				 */
				FUNC6(RIO_DEBUG_TTY, "open(%d) sleeping for carr broken by signal\n", SysPort);
				FUNC2(p, PortP, RIOC_FCLOSE);
				/*
				   tp->tm.c_state &= ~WOPEN;
				 */
				PortP->State &= ~RIO_WOPEN;
				FUNC9(&PortP->portSem, flags);
				FUNC4();
				return -EINTR;
			}
			FUNC8(&PortP->portSem, flags);
		}
		PortP->State &= ~RIO_WOPEN;
	}
	if (p->RIOHalted)
		goto bombout;
	FUNC6(RIO_DEBUG_TTY, "Setting RIO_MOPEN\n");
	PortP->State |= RIO_MOPEN;

	if (p->RIOHalted)
		goto bombout;

	FUNC6(RIO_DEBUG_TTY, "high level open done\n");

	/*
	 ** Count opens for port statistics reporting
	 */
	if (PortP->statsGather)
		PortP->opens++;

	FUNC9(&PortP->portSem, flags);
	FUNC6(RIO_DEBUG_TTY, "Returning from open\n");
	FUNC4();
	return 0;
}