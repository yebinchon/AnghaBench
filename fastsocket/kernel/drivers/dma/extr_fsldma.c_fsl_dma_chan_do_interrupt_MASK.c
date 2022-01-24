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
struct fsl_dma_chan {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FSL_DMA_SR_CB ; 
 int FSL_DMA_SR_CH ; 
 int FSL_DMA_SR_EOCDI ; 
 int FSL_DMA_SR_EOLNI ; 
 int FSL_DMA_SR_EOSI ; 
 int FSL_DMA_SR_PE ; 
 int FSL_DMA_SR_TE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_dma_chan*) ; 
 scalar_t__ FUNC4 (struct fsl_dma_chan*) ; 
 scalar_t__ FUNC5 (struct fsl_dma_chan*) ; 
 scalar_t__ FUNC6 (struct fsl_dma_chan*) ; 
 int FUNC7 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_dma_chan*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct fsl_dma_chan *fsl_chan = (struct fsl_dma_chan *)data;
	u32 stat;
	int update_cookie = 0;
	int xfer_ld_q = 0;

	stat = FUNC7(fsl_chan);
	FUNC0(fsl_chan->dev, "event: channel %d, stat = 0x%x\n",
						fsl_chan->id, stat);
	FUNC8(fsl_chan, stat);		/* Clear the event register */

	stat &= ~(FSL_DMA_SR_CB | FSL_DMA_SR_CH);
	if (!stat)
		return IRQ_NONE;

	if (stat & FSL_DMA_SR_TE)
		FUNC1(fsl_chan->dev, "Transfer Error!\n");

	/* Programming Error
	 * The DMA_INTERRUPT async_tx is a NULL transfer, which will
	 * triger a PE interrupt.
	 */
	if (stat & FSL_DMA_SR_PE) {
		FUNC0(fsl_chan->dev, "event: Programming Error INT\n");
		if (FUNC4(fsl_chan) == 0) {
			/* BCR register is 0, this is a DMA_INTERRUPT async_tx.
			 * Now, update the completed cookie, and continue the
			 * next uncompleted transfer.
			 */
			update_cookie = 1;
			xfer_ld_q = 1;
		}
		stat &= ~FSL_DMA_SR_PE;
	}

	/* If the link descriptor segment transfer finishes,
	 * we will recycle the used descriptor.
	 */
	if (stat & FSL_DMA_SR_EOSI) {
		FUNC0(fsl_chan->dev, "event: End-of-segments INT\n");
		FUNC0(fsl_chan->dev, "event: clndar 0x%llx, nlndar 0x%llx\n",
			(unsigned long long)FUNC5(fsl_chan),
			(unsigned long long)FUNC6(fsl_chan));
		stat &= ~FSL_DMA_SR_EOSI;
		update_cookie = 1;
	}

	/* For MPC8349, EOCDI event need to update cookie
	 * and start the next transfer if it exist.
	 */
	if (stat & FSL_DMA_SR_EOCDI) {
		FUNC0(fsl_chan->dev, "event: End-of-Chain link INT\n");
		stat &= ~FSL_DMA_SR_EOCDI;
		update_cookie = 1;
		xfer_ld_q = 1;
	}

	/* If it current transfer is the end-of-transfer,
	 * we should clear the Channel Start bit for
	 * prepare next transfer.
	 */
	if (stat & FSL_DMA_SR_EOLNI) {
		FUNC0(fsl_chan->dev, "event: End-of-link INT\n");
		stat &= ~FSL_DMA_SR_EOLNI;
		xfer_ld_q = 1;
	}

	if (update_cookie)
		FUNC3(fsl_chan);
	if (xfer_ld_q)
		FUNC2(fsl_chan);
	if (stat)
		FUNC0(fsl_chan->dev, "event: unhandled sr 0x%02x\n",
					stat);

	FUNC0(fsl_chan->dev, "event: Exit\n");
	FUNC9(&fsl_chan->tasklet);
	return IRQ_HANDLED;
}