#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  pt; } ;
struct saa7134_dev {TYPE_2__ dmasound; TYPE_5__* pci; } ;
struct TYPE_8__ {struct saa7134_dev* dev; } ;
typedef  TYPE_3__ snd_card_saa7134_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream * substream)
{
	snd_card_saa7134_t *saa7134 = FUNC2(substream);
	struct saa7134_dev *dev;

	dev = saa7134->dev;

	if (substream->runtime->dma_area) {
		FUNC1(dev->pci, &dev->dmasound.pt);
		FUNC3(&dev->pci->dev, &dev->dmasound.dma);
		FUNC0(dev);
		substream->runtime->dma_area = NULL;
	}

	return 0;
}