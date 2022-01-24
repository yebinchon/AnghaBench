#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ frontend; } ;
struct videobuf_dvb_frontend {TYPE_1__ dvb; } ;
struct cx23885_tsport {TYPE_2__* dev; int /*<<< orphan*/  frontends; } ;
struct TYPE_4__ {int board; } ;

/* Variables and functions */
#define  CX23885_BOARD_NETUP_DUAL_DVBS2_CI 128 
 int /*<<< orphan*/  FUNC0 (struct cx23885_tsport*) ; 
 struct videobuf_dvb_frontend* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cx23885_tsport *port)
{
	struct videobuf_dvb_frontend *fe0;

	/* FIXME: in an error condition where the we have
	 * an expected number of frontends (attach problem)
	 * then this might not clean up correctly, if 1
	 * is invalid.
	 * This comment only applies to future boards IF they
	 * implement MFE support.
	 */
	fe0 = FUNC1(&port->frontends, 1);
	if (fe0->dvb.frontend)
		FUNC2(&port->frontends);

	switch (port->dev->board) {
	case CX23885_BOARD_NETUP_DUAL_DVBS2_CI:
		FUNC0(port);
		break;
	}

	return 0;
}