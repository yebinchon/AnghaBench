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
typedef  int u16 ;
struct scatterlist {int dummy; } ;
struct mmc_omap_host {int dma_ch; size_t sg_idx; unsigned long phys_base; int dma_len; } ;
struct mmc_data {int blksz; int blocks; int flags; struct scatterlist* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MMC_DATA_WRITE ; 
 int OMAP24XX_DMA_MMC1_RX ; 
 int OMAP24XX_DMA_MMC1_TX ; 
 int /*<<< orphan*/  OMAP_DMA_AMODE_CONSTANT ; 
 int /*<<< orphan*/  OMAP_DMA_AMODE_POST_INC ; 
 int /*<<< orphan*/  OMAP_DMA_DATA_BURST_4 ; 
 int /*<<< orphan*/  OMAP_DMA_DATA_TYPE_S16 ; 
 int OMAP_DMA_PORT_EMIFF ; 
 int OMAP_DMA_PORT_TIPB ; 
 int /*<<< orphan*/  OMAP_DMA_SYNC_FRAME ; 
 unsigned long OMAP_MMC_REG_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_omap_host*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC12 (struct scatterlist*) ; 
 int FUNC13 (struct scatterlist*) ; 

__attribute__((used)) static void
FUNC14(struct mmc_omap_host *host, struct mmc_data *data)
{
	int dma_ch = host->dma_ch;
	unsigned long data_addr;
	u16 buf, frame;
	u32 count;
	struct scatterlist *sg = &data->sg[host->sg_idx];
	int src_port = 0;
	int dst_port = 0;
	int sync_dev = 0;

	data_addr = host->phys_base + OMAP_MMC_REG_DATA;
	frame = data->blksz;
	count = FUNC13(sg);

	if ((data->blocks == 1) && (count > data->blksz))
		count = frame;

	host->dma_len = count;

	/* FIFO is 16x2 bytes on 15xx, and 32x2 bytes on 16xx and 24xx.
	 * Use 16 or 32 word frames when the blocksize is at least that large.
	 * Blocksize is usually 512 bytes; but not for some SD reads.
	 */
	if (FUNC3() && frame > 32)
		frame = 32;
	else if (frame > 64)
		frame = 64;
	count /= frame;
	frame >>= 1;

	if (!(data->flags & MMC_DATA_WRITE)) {
		buf = 0x800f | ((frame - 1) << 8);

		if (FUNC2()) {
			src_port = OMAP_DMA_PORT_TIPB;
			dst_port = OMAP_DMA_PORT_EMIFF;
		}
		if (FUNC4())
			sync_dev = OMAP24XX_DMA_MMC1_RX;

		FUNC10(dma_ch, src_port,
					OMAP_DMA_AMODE_CONSTANT,
					data_addr, 0, 0);
		FUNC7(dma_ch, dst_port,
					 OMAP_DMA_AMODE_POST_INC,
					 FUNC12(sg), 0, 0);
		FUNC6(dma_ch, 1);
		FUNC5(dma_ch, OMAP_DMA_DATA_BURST_4);
	} else {
		buf = 0x0f80 | ((frame - 1) << 0);

		if (FUNC2()) {
			src_port = OMAP_DMA_PORT_EMIFF;
			dst_port = OMAP_DMA_PORT_TIPB;
		}
		if (FUNC4())
			sync_dev = OMAP24XX_DMA_MMC1_TX;

		FUNC7(dma_ch, dst_port,
					 OMAP_DMA_AMODE_CONSTANT,
					 data_addr, 0, 0);
		FUNC10(dma_ch, src_port,
					OMAP_DMA_AMODE_POST_INC,
					FUNC12(sg), 0, 0);
		FUNC9(dma_ch, 1);
		FUNC8(dma_ch, OMAP_DMA_DATA_BURST_4);
	}

	/* Max limit for DMA frame count is 0xffff */
	FUNC0(count > 0xffff);

	FUNC1(host, BUF, buf);
	FUNC11(dma_ch, OMAP_DMA_DATA_TYPE_S16,
				     frame, count, OMAP_DMA_SYNC_FRAME,
				     sync_dev, 0);
}