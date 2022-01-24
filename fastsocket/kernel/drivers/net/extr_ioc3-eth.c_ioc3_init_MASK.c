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
struct net_device {int dummy; } ;
struct ioc3_private {int emcr; int /*<<< orphan*/  ehar_l; int /*<<< orphan*/  ehar_h; int /*<<< orphan*/  ioc3_timer; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int EISR_RXBUFOFLO ; 
 int EISR_RXMEMERR ; 
 int EISR_RXOFLO ; 
 int EISR_RXPARERR ; 
 int EISR_RXTIMERINT ; 
 int EISR_TXBUFUFLO ; 
 int EISR_TXEXPLICIT ; 
 int EISR_TXMEMERR ; 
 int EMCR_PADEN ; 
 int EMCR_RST ; 
 int EMCR_RXDMAEN ; 
 int EMCR_RXEN ; 
 int EMCR_RXOFF_SHIFT ; 
 int EMCR_TXDMAEN ; 
 int EMCR_TXEN ; 
 int PCI64_ATTR_BAR ; 
 int RX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct ioc3_private* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC14(dev);
	struct ioc3 *ioc3 = ip->regs;

	FUNC1(&ip->ioc3_timer);	/* Kill if running	*/

	FUNC9(EMCR_RST);			/* Reset		*/
	(void) FUNC4();			/* Flush WB		*/
	FUNC15(4);				/* Give it time ...	*/
	FUNC9(0);
	(void) FUNC4();

	/* Misc registers  */
#ifdef CONFIG_SGI_IP27
	ioc3_w_erbar(PCI64_ATTR_BAR >> 32);	/* Barrier on last store */
#else
	FUNC10(0);			/* Let PCI API get it right */
#endif
	(void) FUNC5();			/* Clear on read */
	FUNC11(15);			/* RX low watermark  */
	FUNC13(0);				/* Interrupt immediately */
	FUNC0(dev);
	FUNC6(ip->ehar_h);
	FUNC7(ip->ehar_l);
	FUNC12(42);			/* XXX should be random */

	FUNC2(dev);

	ip->emcr |= ((RX_OFFSET / 2) << EMCR_RXOFF_SHIFT) | EMCR_TXDMAEN |
	             EMCR_TXEN | EMCR_RXDMAEN | EMCR_RXEN | EMCR_PADEN;
	FUNC9(ip->emcr);
	FUNC8(EISR_RXTIMERINT | EISR_RXOFLO | EISR_RXBUFOFLO |
	            EISR_RXMEMERR | EISR_RXPARERR | EISR_TXBUFUFLO |
	            EISR_TXEXPLICIT | EISR_TXMEMERR);
	(void) FUNC3();
}