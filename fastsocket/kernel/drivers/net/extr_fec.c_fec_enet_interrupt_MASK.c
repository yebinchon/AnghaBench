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
typedef  int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ hwp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FEC_ENET_MII ; 
 int FEC_ENET_RXF ; 
 int FEC_ENET_TXF ; 
 scalar_t__ FEC_IEVENT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct fec_enet_private* FUNC3 (struct net_device*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t
FUNC6(int irq, void * dev_id)
{
	struct	net_device *dev = dev_id;
	struct fec_enet_private *fep = FUNC3(dev);
	uint	int_events;
	irqreturn_t ret = IRQ_NONE;

	do {
		int_events = FUNC4(fep->hwp + FEC_IEVENT);
		FUNC5(int_events, fep->hwp + FEC_IEVENT);

		if (int_events & FEC_ENET_RXF) {
			ret = IRQ_HANDLED;
			FUNC1(dev);
		}

		/* Transmit OK, or non-fatal error. Update the buffer
		 * descriptors. FEC handles all errors, we just discover
		 * them as part of the transmit process.
		 */
		if (int_events & FEC_ENET_TXF) {
			ret = IRQ_HANDLED;
			FUNC2(dev);
		}

		if (int_events & FEC_ENET_MII) {
			ret = IRQ_HANDLED;
			FUNC0(dev);
		}

	} while (int_events);

	return ret;
}