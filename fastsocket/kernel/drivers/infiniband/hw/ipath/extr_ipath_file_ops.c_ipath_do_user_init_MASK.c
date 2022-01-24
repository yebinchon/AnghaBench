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
typedef  int /*<<< orphan*/  u32 ;
struct ipath_user_info {int /*<<< orphan*/  spu_rcvhdrsize; } ;
struct ipath_portdata {int port_port; int port_piocnt; int port_pio_base; int port_lastrcvhdrqtail; int /*<<< orphan*/  port_wait; int /*<<< orphan*/  port_flag; scalar_t__ port_subport_cnt; scalar_t__ port_rcvhdrtail_kvaddr; int /*<<< orphan*/  port_hdrqfull; int /*<<< orphan*/  port_hdrqfull_poll; scalar_t__ port_urgent_poll; scalar_t__ port_urgent; scalar_t__ port_tidcursor; scalar_t__ port_piobufs; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int ipath_ports_extrabuf; int ipath_pbufsport; int ipath_palign; unsigned long long ipath_rcvctrl; int ipath_flags; unsigned long long ipath_r_tailupd_shift; TYPE_1__* ipath_kregs; scalar_t__ ipath_r_portenable_shift; scalar_t__ ipath_piobufbase; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_rcvctrl; } ;

/* Variables and functions */
 int IPATH_NODMA_RTAIL ; 
 int /*<<< orphan*/  IPATH_PORT_MASTER_UNINIT ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_portdata*) ; 
 int FUNC4 (struct ipath_devdata*,struct ipath_portdata*) ; 
 int FUNC5 (struct ipath_portdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ipath_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct ipath_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ipath_portdata* FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,unsigned long long*) ; 
 scalar_t__ FUNC12 (struct file*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ur_rcvegrindexhead ; 
 int /*<<< orphan*/  ur_rcvegrindextail ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct file *fp,
			      const struct ipath_user_info *uinfo)
{
	int ret;
	struct ipath_portdata *pd = FUNC10(fp);
	struct ipath_devdata *dd;
	u32 head32;

	/* Subports don't need to initialize anything since master did it. */
	if (FUNC12(fp)) {
		ret = FUNC14(pd->port_wait,
			!FUNC13(IPATH_PORT_MASTER_UNINIT, &pd->port_flag));
		goto done;
	}

	dd = pd->port_dd;

	if (uinfo->spu_rcvhdrsize) {
		ret = FUNC7(dd, uinfo->spu_rcvhdrsize);
		if (ret)
			goto done;
	}

	/* for now we do nothing with rcvhdrcnt: uinfo->spu_rcvhdrcnt */

	/* some ports may get extra buffers, calculate that here */
	if (pd->port_port <= dd->ipath_ports_extrabuf)
		pd->port_piocnt = dd->ipath_pbufsport + 1;
	else
		pd->port_piocnt = dd->ipath_pbufsport;

	/* for right now, kernel piobufs are at end, so port 1 is at 0 */
	if (pd->port_port <= dd->ipath_ports_extrabuf)
		pd->port_pio_base = (dd->ipath_pbufsport + 1)
			* (pd->port_port - 1);
	else
		pd->port_pio_base = dd->ipath_ports_extrabuf +
			dd->ipath_pbufsport * (pd->port_port - 1);
	pd->port_piobufs = dd->ipath_piobufbase +
		pd->port_pio_base * dd->ipath_palign;
	FUNC1(VERBOSE, "piobuf base for port %u is 0x%x, piocnt %u,"
		" first pio %u\n", pd->port_port, pd->port_piobufs,
		pd->port_piocnt, pd->port_pio_base);
	FUNC2(dd, pd->port_pio_base, pd->port_piocnt, 0);

	/*
	 * Now allocate the rcvhdr Q and eager TIDs; skip the TID
	 * array for time being.  If pd->port_port > chip-supported,
	 * we need to do extra stuff here to handle by handling overflow
	 * through port 0, someday
	 */
	ret = FUNC4(dd, pd);
	if (!ret)
		ret = FUNC5(pd);
	if (ret)
		goto done;

	/*
	 * set the eager head register for this port to the current values
	 * of the tail pointers, since we don't know if they were
	 * updated on last use of the port.
	 */
	head32 = FUNC6(dd, ur_rcvegrindextail, pd->port_port);
	FUNC9(dd, ur_rcvegrindexhead, head32, pd->port_port);
	pd->port_lastrcvhdrqtail = -1;
	FUNC1(VERBOSE, "Wrote port%d egrhead %x from tail regs\n",
		pd->port_port, head32);
	pd->port_tidcursor = 0;	/* start at beginning after open */

	/* initialize poll variables... */
	pd->port_urgent = 0;
	pd->port_urgent_poll = 0;
	pd->port_hdrqfull_poll = pd->port_hdrqfull;

	/*
	 * Now enable the port for receive.
	 * For chips that are set to DMA the tail register to memory
	 * when they change (and when the update bit transitions from
	 * 0 to 1.  So for those chips, we turn it off and then back on.
	 * This will (very briefly) affect any other open ports, but the
	 * duration is very short, and therefore isn't an issue.  We
	 * explicitly set the in-memory tail copy to 0 beforehand, so we
	 * don't have to wait to be sure the DMA update has happened
	 * (chip resets head/tail to 0 on transition to enable).
	 */
	FUNC11(dd->ipath_r_portenable_shift + pd->port_port,
		&dd->ipath_rcvctrl);
	if (!(dd->ipath_flags & IPATH_NODMA_RTAIL)) {
		if (pd->port_rcvhdrtail_kvaddr)
			FUNC3(pd);
		FUNC8(dd, dd->ipath_kregs->kr_rcvctrl,
			dd->ipath_rcvctrl &
			~(1ULL << dd->ipath_r_tailupd_shift));
	}
	FUNC8(dd, dd->ipath_kregs->kr_rcvctrl,
			 dd->ipath_rcvctrl);
	/* Notify any waiting slaves */
	if (pd->port_subport_cnt) {
		FUNC0(IPATH_PORT_MASTER_UNINIT, &pd->port_flag);
		FUNC15(&pd->port_wait);
	}
done:
	return ret;
}