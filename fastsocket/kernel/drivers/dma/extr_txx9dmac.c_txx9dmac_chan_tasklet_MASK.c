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
struct txx9dmac_chan {int irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR ; 
 int TXX9_DMA_CSR_ABCHC ; 
 int TXX9_DMA_CSR_NCHNC ; 
 int TXX9_DMA_CSR_NTRNFC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct txx9dmac_chan*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	int irq;
	u32 csr;
	struct txx9dmac_chan *dc;

	dc = (struct txx9dmac_chan *)data;
	csr = FUNC1(dc, CSR);
	FUNC2(FUNC0(&dc->chan), "tasklet: status=%x\n", csr);

	FUNC4(&dc->lock);
	if (csr & (TXX9_DMA_CSR_ABCHC | TXX9_DMA_CSR_NCHNC |
		   TXX9_DMA_CSR_NTRNFC))
		FUNC6(dc);
	FUNC5(&dc->lock);
	irq = dc->irq;

	FUNC3(irq);
}