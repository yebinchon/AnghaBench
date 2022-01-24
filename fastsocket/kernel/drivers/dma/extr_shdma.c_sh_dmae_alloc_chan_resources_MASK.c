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
struct sh_dmae_chan {scalar_t__ descs_allocated; int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  common; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_submit; } ;
struct sh_desc {int /*<<< orphan*/  tx_list; TYPE_1__ async_tx; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NR_DESCS_PER_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct sh_desc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_dmae_chan*,struct sh_desc*) ; 
 int /*<<< orphan*/  sh_dmae_tx_submit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sh_dmae_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct sh_dmae_chan *sh_chan = FUNC6(chan);
	struct sh_desc *desc;

	FUNC4(&sh_chan->desc_lock);
	while (sh_chan->descs_allocated < NR_DESCS_PER_CHANNEL) {
		FUNC5(&sh_chan->desc_lock);
		desc = FUNC2(sizeof(struct sh_desc), GFP_KERNEL);
		if (!desc) {
			FUNC4(&sh_chan->desc_lock);
			break;
		}
		FUNC1(&desc->async_tx,
					&sh_chan->common);
		desc->async_tx.tx_submit = sh_dmae_tx_submit;
		desc->async_tx.flags = DMA_CTRL_ACK;
		FUNC0(&desc->tx_list);
		FUNC3(sh_chan, desc);

		FUNC4(&sh_chan->desc_lock);
		sh_chan->descs_allocated++;
	}
	FUNC5(&sh_chan->desc_lock);

	return sh_chan->descs_allocated;
}