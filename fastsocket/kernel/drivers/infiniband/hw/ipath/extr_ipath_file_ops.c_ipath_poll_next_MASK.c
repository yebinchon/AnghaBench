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
typedef  int u32 ;
struct poll_table_struct {int dummy; } ;
struct ipath_portdata {int /*<<< orphan*/  port_wait; scalar_t__ port_port; int /*<<< orphan*/  port_flag; scalar_t__ port_rcvhdrtail_kvaddr; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int ipath_rhdrhead_intr_off; int /*<<< orphan*/  ipath_rcvctrl; TYPE_1__* ipath_kregs; scalar_t__ ipath_r_intravail_shift; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_rcvctrl; } ;

/* Variables and functions */
 scalar_t__ IPATH_PORT_WAITING_RCV ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int FUNC0 (struct ipath_portdata*) ; 
 unsigned int FUNC1 (struct ipath_portdata*) ; 
 int FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ur_rcvhdrhead ; 
 int /*<<< orphan*/  ur_rcvhdrtail ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static unsigned int FUNC9(struct ipath_portdata *pd,
				    struct file *fp,
				    struct poll_table_struct *pt)
{
	u32 head;
	u32 tail;
	unsigned pollflag = 0;
	struct ipath_devdata *dd;

	dd = pd->port_dd;

	/* variable access in ipath_poll_hdrqfull() needs this */
	FUNC6();
	pollflag = FUNC1(pd);

	head = FUNC2(dd, ur_rcvhdrhead, pd->port_port);
	if (pd->port_rcvhdrtail_kvaddr)
		tail = FUNC0(pd);
	else
		tail = FUNC2(dd, ur_rcvhdrtail, pd->port_port);

	if (head != tail)
		pollflag |= POLLIN | POLLRDNORM;
	else {
		/* this saves a spin_lock/unlock in interrupt handler */
		FUNC7(IPATH_PORT_WAITING_RCV, &pd->port_flag);
		/* flush waiting flag so we don't miss an event */
		FUNC8();

		FUNC7(pd->port_port + dd->ipath_r_intravail_shift,
			&dd->ipath_rcvctrl);

		FUNC3(dd, dd->ipath_kregs->kr_rcvctrl,
				 dd->ipath_rcvctrl);

		if (dd->ipath_rhdrhead_intr_off) /* arm rcv interrupt */
			FUNC4(dd, ur_rcvhdrhead,
					 dd->ipath_rhdrhead_intr_off | head,
					 pd->port_port);

		FUNC5(fp, &pd->port_wait, pt);
	}

	return pollflag;
}