#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dma_blk; int read_count; int blksize; int blocks; int recording_on; int /*<<< orphan*/  substream; int /*<<< orphan*/  bufsize; } ;
struct saa7134_dev {int /*<<< orphan*/  slock; TYPE_1__ dmasound; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 int UNSET ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct saa7134_dev *dev,
				  unsigned long status)
{
	int next_blk, reg = 0;

	FUNC7(&dev->slock);
	if (UNSET == dev->dmasound.dma_blk) {
		FUNC2("irq: recording stopped\n");
		goto done;
	}
	if (0 != (status & 0x0f000000))
		FUNC2("irq: lost %ld\n", (status >> 24) & 0x0f);
	if (0 == (status & 0x10000000)) {
		/* odd */
		if (0 == (dev->dmasound.dma_blk & 0x01))
			reg = FUNC0(6);
	} else {
		/* even */
		if (1 == (dev->dmasound.dma_blk & 0x01))
			reg = FUNC1(6);
	}
	if (0 == reg) {
		FUNC2("irq: field oops [%s]\n",
			(status & 0x10000000) ? "even" : "odd");
		goto done;
	}

	if (dev->dmasound.read_count >= dev->dmasound.blksize * (dev->dmasound.blocks-2)) {
		FUNC2("irq: overrun [full=%d/%d] - Blocks in %d\n",dev->dmasound.read_count,
			dev->dmasound.bufsize, dev->dmasound.blocks);
		FUNC8(&dev->slock);
		FUNC6(dev->dmasound.substream,SNDRV_PCM_STATE_XRUN);
		return;
	}

	/* next block addr */
	next_blk = (dev->dmasound.dma_blk + 2) % dev->dmasound.blocks;
	FUNC3(reg,next_blk * dev->dmasound.blksize);
	if (debug > 2)
		FUNC2("irq: ok, %s, next_blk=%d, addr=%x, blocks=%u, size=%u, read=%u\n",
			(status & 0x10000000) ? "even" : "odd ", next_blk,
			next_blk * dev->dmasound.blksize, dev->dmasound.blocks, dev->dmasound.blksize, dev->dmasound.read_count);

	/* update status & wake waiting readers */
	dev->dmasound.dma_blk = (dev->dmasound.dma_blk + 1) % dev->dmasound.blocks;
	dev->dmasound.read_count += dev->dmasound.blksize;

	dev->dmasound.recording_on = reg;

	if (dev->dmasound.read_count >= FUNC4(dev->dmasound.substream)) {
		FUNC8(&dev->slock);
		FUNC5(dev->dmasound.substream);
		FUNC7(&dev->slock);
	}

 done:
	FUNC8(&dev->slock);

}