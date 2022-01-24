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
typedef  int u_short ;
struct tty_struct {int dummy; } ;
struct cyclades_port {scalar_t__ tty; unsigned char ignore_status_mask; unsigned char read_status_mask; int flags; int /*<<< orphan*/  last_active; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ASYNC_SAK ; 
 scalar_t__ BASE_ADDR ; 
 unsigned char CyBREAK ; 
 unsigned char CyFRAME ; 
 size_t CyLICR ; 
 unsigned char CyNOTRANS ; 
 unsigned char CyOVERRUN ; 
 unsigned char CyPARITY ; 
 size_t CyRDR ; 
 size_t CyREOIR ; 
 size_t CyRFOC ; 
 size_t CyRISR ; 
 unsigned char CyTIMEOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  TTY_FRAME ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  TTY_PARITY ; 
 struct cyclades_port* cy_port ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct tty_struct *tty;
	struct cyclades_port *info;
	volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
	unsigned char err, rfoc;
	int channel;
	char data;

	/* determine the channel and change to that context */
	channel = (u_short) (base_addr[CyLICR] >> 2);
	info = &cy_port[channel];
	info->last_active = jiffies;

	if ((err = base_addr[CyRISR]) & CyTIMEOUT) {
		/* This is a receive timeout interrupt, ignore it */
		base_addr[CyREOIR] = CyNOTRANS;
		return IRQ_HANDLED;
	}

	/* Read a byte of data if there is any - assume the error
	 * is associated with this character */

	if ((rfoc = base_addr[CyRFOC]) != 0)
		data = base_addr[CyRDR];
	else
		data = 0;

	/* if there is nowhere to put the data, discard it */
	if (info->tty == 0) {
		base_addr[CyREOIR] = rfoc ? 0 : CyNOTRANS;
		return IRQ_HANDLED;
	} else {		/* there is an open port for this data */
		tty = info->tty;
		if (err & info->ignore_status_mask) {
			base_addr[CyREOIR] = rfoc ? 0 : CyNOTRANS;
			return IRQ_HANDLED;
		}
		if (FUNC1(tty, 1) != 0) {
			if (err & info->read_status_mask) {
				if (err & CyBREAK) {
					FUNC2(tty, data,
							     TTY_BREAK);
					if (info->flags & ASYNC_SAK) {
						FUNC0(tty);
					}
				} else if (err & CyFRAME) {
					FUNC2(tty, data,
							     TTY_FRAME);
				} else if (err & CyPARITY) {
					FUNC2(tty, data,
							     TTY_PARITY);
				} else if (err & CyOVERRUN) {
					FUNC2(tty, 0,
							     TTY_OVERRUN);
					/*
					   If the flip buffer itself is
					   overflowing, we still lose
					   the next incoming character.
					 */
					if (FUNC1(tty, 1) !=
					    0) {
						FUNC2(tty, data,
								     TTY_FRAME);
					}
					/* These two conditions may imply */
					/* a normal read should be done. */
					/* else if(data & CyTIMEOUT) */
					/* else if(data & CySPECHAR) */
				} else {
					FUNC2(tty, 0,
							     TTY_NORMAL);
				}
			} else {
				FUNC2(tty, data, TTY_NORMAL);
			}
		} else {
			/* there was a software buffer overrun
			   and nothing could be done about it!!! */
		}
	}
	FUNC3(tty);
	/* end of service */
	base_addr[CyREOIR] = rfoc ? 0 : CyNOTRANS;
	return IRQ_HANDLED;
}