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
struct fsl_dma_chan {int /*<<< orphan*/  dev; } ;
struct dma_async_tx_descriptor {unsigned long flags; int /*<<< orphan*/  cookie; } ;
struct fsl_desc_sw {struct dma_async_tx_descriptor async_tx; int /*<<< orphan*/  tx_list; int /*<<< orphan*/  node; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct fsl_desc_sw* FUNC1 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_dma_chan*,struct fsl_desc_sw*) ; 
 struct fsl_dma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC5(struct dma_chan *chan, unsigned long flags)
{
	struct fsl_dma_chan *fsl_chan;
	struct fsl_desc_sw *new;

	if (!chan)
		return NULL;

	fsl_chan = FUNC4(chan);

	new = FUNC1(fsl_chan);
	if (!new) {
		FUNC0(fsl_chan->dev, "No free memory for link descriptor\n");
		return NULL;
	}

	new->async_tx.cookie = -EBUSY;
	new->async_tx.flags = flags;

	/* Insert the link descriptor to the LD ring */
	FUNC2(&new->node, &new->tx_list);

	/* Set End-of-link to the last link descriptor of new list*/
	FUNC3(fsl_chan, new);

	return &new->async_tx;
}