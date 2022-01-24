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
struct fsl_dma_chan {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; scalar_t__ desc_pool; } ;
struct fsl_desc_sw {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct fsl_dma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan)
{
	struct fsl_dma_chan *fsl_chan = FUNC2(chan);

	/* Has this channel already been allocated? */
	if (fsl_chan->desc_pool)
		return 1;

	/* We need the descriptor to be aligned to 32bytes
	 * for meeting FSL DMA specification requirement.
	 */
	fsl_chan->desc_pool = FUNC1("fsl_dma_engine_desc_pool",
			fsl_chan->dev, sizeof(struct fsl_desc_sw),
			32, 0);
	if (!fsl_chan->desc_pool) {
		FUNC0(fsl_chan->dev, "No memory for channel %d "
			"descriptor dma pool.\n", fsl_chan->id);
		return 0;
	}

	return 1;
}