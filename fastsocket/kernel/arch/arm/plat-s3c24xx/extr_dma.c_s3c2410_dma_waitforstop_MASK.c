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
struct s3c2410_dma_chan {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 unsigned long S3C2410_DMASKTRIG_ON ; 
 int /*<<< orphan*/  S3C2410_DMA_DMASKTRIG ; 
 unsigned long FUNC0 (struct s3c2410_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s3c2410_dma_chan *chan)
{
	unsigned long tmp;
	unsigned int timeout = 0x10000;

	while (timeout-- > 0) {
		tmp = FUNC0(chan, S3C2410_DMA_DMASKTRIG);

		if (!(tmp & S3C2410_DMASKTRIG_ON))
			return;
	}

	FUNC1("dma%d: failed to stop?\n", chan->number);
}