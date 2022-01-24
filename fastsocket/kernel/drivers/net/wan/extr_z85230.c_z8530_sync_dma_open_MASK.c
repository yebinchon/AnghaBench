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
struct z8530_channel {int sync; int mtu; int rxdma_on; int txdma_on; int tx_dma_used; int dma_tx; int dma_ready; int* regs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * irqs; int /*<<< orphan*/  txdma; int /*<<< orphan*/  rxdma; int /*<<< orphan*/ ** rx_buf; scalar_t__ dma_num; int /*<<< orphan*/ ** tx_dma_buf; int /*<<< orphan*/ * skb2; int /*<<< orphan*/ * skb; scalar_t__ count; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int DMA_MODE_READ ; 
 int DMA_MODE_WRITE ; 
 int DTRREQ ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int INT_ERR_Rx ; 
 int PAGE_SIZE ; 
 size_t R1 ; 
 size_t R14 ; 
 size_t R3 ; 
 int RxENABLE ; 
 int TxINT_ENAB ; 
 int WT_FN_RDYFN ; 
 int WT_RDY_ENAB ; 
 int WT_RDY_RT ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct z8530_channel*,size_t,int) ; 
 int /*<<< orphan*/  z8530_dma_sync ; 
 int /*<<< orphan*/  FUNC14 (struct z8530_channel*,int) ; 

int FUNC15(struct net_device *dev, struct z8530_channel *c)
{
	unsigned long cflags, dflags;
	
	c->sync = 1;
	c->mtu = dev->mtu+64;
	c->count = 0;
	c->skb = NULL;
	c->skb2 = NULL;
	/*
	 *	Load the DMA interfaces up
	 */
	c->rxdma_on = 0;
	c->txdma_on = 0;
	
	/*
	 *	Allocate the DMA flip buffers. Limit by page size.
	 *	Everyone runs 1500 mtu or less on wan links so this
	 *	should be fine.
	 */
	 
	if(c->mtu  > PAGE_SIZE/2)
		return -EMSGSIZE;
	 
	c->rx_buf[0]=(void *)FUNC5(GFP_KERNEL|GFP_DMA);
	if(c->rx_buf[0]==NULL)
		return -ENOBUFS;
	c->rx_buf[1]=c->rx_buf[0]+PAGE_SIZE/2;
	
	c->tx_dma_buf[0]=(void *)FUNC5(GFP_KERNEL|GFP_DMA);
	if(c->tx_dma_buf[0]==NULL)
	{
		FUNC4((unsigned long)c->rx_buf[0]);
		c->rx_buf[0]=NULL;
		return -ENOBUFS;
	}
	c->tx_dma_buf[1]=c->tx_dma_buf[0]+PAGE_SIZE/2;

	c->tx_dma_used=0;
	c->dma_tx = 1;
	c->dma_num=0;
	c->dma_ready=1;
	
	/*
	 *	Enable DMA control mode
	 */

	FUNC10(c->lock, cflags);
	 
	/*
	 *	TX DMA via DIR/REQ
	 */
	 
	c->regs[R14]|= DTRREQ;
	FUNC13(c, R14, c->regs[R14]);     

	c->regs[R1]&= ~TxINT_ENAB;
	FUNC13(c, R1, c->regs[R1]);
	
	/*
	 *	RX DMA via W/Req
	 */	 

	c->regs[R1]|= WT_FN_RDYFN;
	c->regs[R1]|= WT_RDY_RT;
	c->regs[R1]|= INT_ERR_Rx;
	c->regs[R1]&= ~TxINT_ENAB;
	FUNC13(c, R1, c->regs[R1]);
	c->regs[R1]|= WT_RDY_ENAB;
	FUNC13(c, R1, c->regs[R1]);            
	
	/*
	 *	DMA interrupts
	 */
	 
	/*
	 *	Set up the DMA configuration
	 */	
	 
	dflags=FUNC0();
	 
	FUNC2(c->rxdma);
	FUNC1(c->rxdma);
	FUNC9(c->rxdma, DMA_MODE_READ|0x10);
	FUNC7(c->rxdma, FUNC12(c->rx_buf[0]));
	FUNC8(c->rxdma, c->mtu);
	FUNC3(c->rxdma);

	FUNC2(c->txdma);
	FUNC1(c->txdma);
	FUNC9(c->txdma, DMA_MODE_WRITE);
	FUNC2(c->txdma);
	
	FUNC6(dflags);
	
	/*
	 *	Select the DMA interrupt handlers
	 */

	c->rxdma_on = 1;
	c->txdma_on = 1;
	c->tx_dma_used = 1;
	 
	c->irqs = &z8530_dma_sync;
	FUNC14(c,1);
	FUNC13(c, R3, c->regs[R3]|RxENABLE);

	FUNC11(c->lock, cflags);
	
	return 0;
}