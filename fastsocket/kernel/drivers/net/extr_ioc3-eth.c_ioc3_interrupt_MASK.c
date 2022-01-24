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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EISR_RXBUFOFLO ; 
 int EISR_RXMEMERR ; 
 int EISR_RXOFLO ; 
 int EISR_RXPARERR ; 
 int EISR_RXTIMERINT ; 
 int EISR_TXBUFUFLO ; 
 int EISR_TXEXPLICIT ; 
 int EISR_TXMEMERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct ioc3_private*,int) ; 
 int const FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ioc3_private* FUNC5 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *_dev)
{
	struct net_device *dev = (struct net_device *)_dev;
	struct ioc3_private *ip = FUNC5(dev);
	struct ioc3 *ioc3 = ip->regs;
	const u32 enabled = EISR_RXTIMERINT | EISR_RXOFLO | EISR_RXBUFOFLO |
	                    EISR_RXMEMERR | EISR_RXPARERR | EISR_TXBUFUFLO |
	                    EISR_TXEXPLICIT | EISR_TXMEMERR;
	u32 eisr;

	eisr = FUNC1() & enabled;

	FUNC4(eisr);
	(void) FUNC1();				/* Flush */

	if (eisr & (EISR_RXOFLO | EISR_RXBUFOFLO | EISR_RXMEMERR |
	            EISR_RXPARERR | EISR_TXBUFUFLO | EISR_TXMEMERR))
		FUNC0(ip, eisr);
	if (eisr & EISR_RXTIMERINT)
		FUNC2(ip);
	if (eisr & EISR_TXEXPLICIT)
		FUNC3(ip);

	return IRQ_HANDLED;
}