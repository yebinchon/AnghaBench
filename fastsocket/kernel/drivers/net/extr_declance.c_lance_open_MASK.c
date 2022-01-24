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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {scalar_t__ irq; int /*<<< orphan*/  name; scalar_t__ mem_start; } ;
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {scalar_t__ dma_irq; int /*<<< orphan*/  type; struct lance_regs* ll; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IO_REG_SSR ; 
 int IO_SSR_LANCE_DMA_EN ; 
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * filter ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct net_device*) ; 
 int FUNC2 (struct lance_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioasic_ssr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lance_dma_merr_int ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  lance_interrupt ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lance_private*) ; 
 int /*<<< orphan*/  mode ; 
 struct lance_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	volatile u16 *ib = (volatile u16 *)dev->mem_start;
	struct lance_private *lp = FUNC8(dev);
	volatile struct lance_regs *ll = lp->ll;
	int status = 0;

	/* Stop the Lance */
	FUNC14(&ll->rap, LE_CSR0);
	FUNC14(&ll->rdp, LE_C0_STOP);

	/* Set mode and clear multicast filter only at device open,
	 * so that lance_init_ring() called at any error will not
	 * forget multicast filters.
	 *
	 * BTW it is common bug in all lance drivers! --ANK
	 */
	*FUNC6(ib, mode, lp->type) = 0;
	*FUNC6(ib, filter[0], lp->type) = 0;
	*FUNC6(ib, filter[1], lp->type) = 0;
	*FUNC6(ib, filter[2], lp->type) = 0;
	*FUNC6(ib, filter[3], lp->type) = 0;

	FUNC5(dev);
	FUNC7(lp);

	FUNC9(dev);

	/* Associate IRQ with lance_interrupt */
	if (FUNC11(dev->irq, &lance_interrupt, 0, "lance", dev)) {
		FUNC10("%s: Can't get IRQ %d\n", dev->name, dev->irq);
		return -EAGAIN;
	}
	if (lp->dma_irq >= 0) {
		unsigned long flags;

		if (FUNC11(lp->dma_irq, &lance_dma_merr_int, 0,
				"lance error", dev)) {
			FUNC1(dev->irq, dev);
			FUNC10("%s: Can't get DMA IRQ %d\n", dev->name,
				lp->dma_irq);
			return -EAGAIN;
		}

		FUNC12(&ioasic_ssr_lock, flags);

		FUNC0();
		/* Enable I/O ASIC LANCE DMA.  */
		FUNC4(IO_REG_SSR,
			     FUNC3(IO_REG_SSR) | IO_SSR_LANCE_DMA_EN);

		FUNC0();
		FUNC13(&ioasic_ssr_lock, flags);
	}

	status = FUNC2(lp);
	return status;
}