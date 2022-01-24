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
struct net_device {scalar_t__ irq; } ;
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {scalar_t__ dma_irq; int /*<<< orphan*/  multicast_timer; struct lance_regs* ll; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_REG_SSR ; 
 int IO_SSR_LANCE_DMA_EN ; 
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioasic_ssr_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct lance_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct lance_private *lp = FUNC6(dev);
	volatile struct lance_regs *ll = lp->ll;

	FUNC7(dev);
	FUNC0(&lp->multicast_timer);

	/* Stop the card */
	FUNC10(&ll->rap, LE_CSR0);
	FUNC10(&ll->rdp, LE_C0_STOP);

	if (lp->dma_irq >= 0) {
		unsigned long flags;

		FUNC8(&ioasic_ssr_lock, flags);

		FUNC2();
		/* Disable I/O ASIC LANCE DMA.  */
		FUNC5(IO_REG_SSR,
			     FUNC4(IO_REG_SSR) & ~IO_SSR_LANCE_DMA_EN);

		FUNC1();
		FUNC9(&ioasic_ssr_lock, flags);

		FUNC3(lp->dma_irq, dev);
	}
	FUNC3(dev->irq, dev);
	return 0;
}