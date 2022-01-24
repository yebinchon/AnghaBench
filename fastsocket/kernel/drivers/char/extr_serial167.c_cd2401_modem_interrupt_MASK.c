#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
struct cyclades_port {int flags; TYPE_1__* tty; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  last_active; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int stopped; } ;

/* Variables and functions */
 int ASYNC_CHECK_CD ; 
 int ASYNC_CTS_FLOW ; 
 int ASYNC_NORMAL_ACTIVE ; 
 scalar_t__ BASE_ADDR ; 
 int CyCTS ; 
 int CyDCD ; 
 int CyDSR ; 
 size_t CyIER ; 
 size_t CyLICR ; 
 size_t CyMEOIR ; 
 size_t CyMISR ; 
 size_t CyMSVR1 ; 
 unsigned char volatile CyTxMpty ; 
 unsigned char volatile CyTxRdy ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct cyclades_port* cy_port ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct cyclades_port *info;
	volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
	int channel;
	int mdm_change;
	int mdm_status;

	/* determine the channel and change to that context */
	channel = (u_short) (base_addr[CyLICR] >> 2);
	info = &cy_port[channel];
	info->last_active = jiffies;

	mdm_change = base_addr[CyMISR];
	mdm_status = base_addr[CyMSVR1];

	if (info->tty == 0) {	/* nowhere to put the data, ignore it */
		;
	} else {
		if ((mdm_change & CyDCD)
		    && (info->flags & ASYNC_CHECK_CD)) {
			if (mdm_status & CyDCD) {
/* CP('!'); */
				FUNC2(&info->open_wait);
			} else {
/* CP('@'); */
				FUNC0(info->tty);
				FUNC2(&info->open_wait);
				info->flags &= ~ASYNC_NORMAL_ACTIVE;
			}
		}
		if ((mdm_change & CyCTS)
		    && (info->flags & ASYNC_CTS_FLOW)) {
			if (info->tty->stopped) {
				if (mdm_status & CyCTS) {
					/* !!! cy_start isn't used because... */
					info->tty->stopped = 0;
					base_addr[CyIER] |= CyTxMpty;
					FUNC1(info->tty);
				}
			} else {
				if (!(mdm_status & CyCTS)) {
					/* !!! cy_stop isn't used because... */
					info->tty->stopped = 1;
					base_addr[CyIER] &=
					    ~(CyTxMpty | CyTxRdy);
				}
			}
		}
		if (mdm_status & CyDSR) {
		}
	}
	base_addr[CyMEOIR] = 0;
	return IRQ_HANDLED;
}