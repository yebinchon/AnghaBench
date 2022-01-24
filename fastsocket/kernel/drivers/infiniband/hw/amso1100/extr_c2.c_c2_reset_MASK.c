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
struct c2_port {struct c2_dev* c2dev; } ;
struct c2_dev {unsigned int cur_rx; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct c2_dev*) ; 
 unsigned int C2_PCI_HRX_QUI ; 
 int /*<<< orphan*/  FUNC1 (struct c2_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct c2_port *c2_port)
{
	struct c2_dev *c2dev = c2_port->c2dev;
	unsigned int cur_rx = c2dev->cur_rx;

	/* Tell the hardware to quiesce */
	FUNC1(c2dev, cur_rx | C2_PCI_HRX_QUI);

	/*
	 * The hardware will reset the C2_PCI_HRX_QUI bit once
	 * the RXP is quiesced.  Wait 2 seconds for this.
	 */
	FUNC3(2);

	cur_rx = FUNC0(c2dev);

	if (cur_rx & C2_PCI_HRX_QUI)
		FUNC2("c2_reset: failed to quiesce the hardware!\n");

	cur_rx &= ~C2_PCI_HRX_QUI;

	c2dev->cur_rx = cur_rx;

	FUNC2("Current RX: %u\n", c2dev->cur_rx);
}