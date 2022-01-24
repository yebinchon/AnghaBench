#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  sglen; int /*<<< orphan*/  sglist; } ;
struct TYPE_10__ {unsigned int blocks; unsigned int blksize; unsigned int bufsize; TYPE_4__ dma; int /*<<< orphan*/  pt; } ;
struct saa7134_dev {TYPE_1__ dmasound; TYPE_7__* pci; } ;
struct TYPE_12__ {struct saa7134_dev* dev; } ;
typedef  TYPE_3__ snd_card_saa7134_t ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {unsigned int dma_bytes; scalar_t__ dma_addr; int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int FUNC1 (struct saa7134_dev*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (struct snd_pcm_substream*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream * substream,
				      struct snd_pcm_hw_params * hw_params)
{
	snd_card_saa7134_t *saa7134 = FUNC7(substream);
	struct saa7134_dev *dev;
	unsigned int period_size, periods;
	int err;

	period_size = FUNC2(hw_params);
	periods = FUNC3(hw_params);

	if (period_size < 0x100 || period_size > 0x10000)
		return -EINVAL;
	if (periods < 4)
		return -EINVAL;
	if (period_size * periods > 1024 * 1024)
		return -EINVAL;

	dev = saa7134->dev;

	if (dev->dmasound.blocks == periods &&
	    dev->dmasound.blksize == period_size)
		return 0;

	/* release the old buffer */
	if (substream->runtime->dma_area) {
		FUNC6(dev->pci, &dev->dmasound.pt);
		FUNC9(&dev->pci->dev, &dev->dmasound.dma);
		FUNC0(dev);
		substream->runtime->dma_area = NULL;
	}
	dev->dmasound.blocks  = periods;
	dev->dmasound.blksize = period_size;
	dev->dmasound.bufsize = period_size * periods;

	err = FUNC1(dev);
	if (0 != err) {
		dev->dmasound.blocks  = 0;
		dev->dmasound.blksize = 0;
		dev->dmasound.bufsize = 0;
		return err;
	}

	if (0 != (err = FUNC8(&dev->pci->dev, &dev->dmasound.dma))) {
		FUNC0(dev);
		return err;
	}
	if (0 != (err = FUNC4(dev->pci,&dev->dmasound.pt))) {
		FUNC9(&dev->pci->dev, &dev->dmasound.dma);
		FUNC0(dev);
		return err;
	}
	if (0 != (err = FUNC5(dev->pci,&dev->dmasound.pt,
						dev->dmasound.dma.sglist,
						dev->dmasound.dma.sglen,
						0))) {
		FUNC6(dev->pci, &dev->dmasound.pt);
		FUNC9(&dev->pci->dev, &dev->dmasound.dma);
		FUNC0(dev);
		return err;
	}

	/* I should be able to use runtime->dma_addr in the control
	   byte, but it doesn't work. So I allocate the DMA using the
	   V4L functions, and force ALSA to use that as the DMA area */

	substream->runtime->dma_area = dev->dmasound.dma.vaddr;
	substream->runtime->dma_bytes = dev->dmasound.bufsize;
	substream->runtime->dma_addr = 0;

	return 0;

}