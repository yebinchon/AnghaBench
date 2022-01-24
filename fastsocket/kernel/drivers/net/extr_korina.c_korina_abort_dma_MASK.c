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
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct dma_reg {int /*<<< orphan*/  dmandptr; int /*<<< orphan*/  dmadptr; int /*<<< orphan*/  dmas; int /*<<< orphan*/  dmac; } ;

/* Variables and functions */
 int DMA_CHAN_RUN_BIT ; 
 int DMA_STAT_HALT ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct net_device *dev,
					struct dma_reg *ch)
{
       if (FUNC0(&ch->dmac) & DMA_CHAN_RUN_BIT) {
	       FUNC1(0x10, &ch->dmac);

	       while (!(FUNC0(&ch->dmas) & DMA_STAT_HALT))
		       dev->trans_start = jiffies;

	       FUNC1(0, &ch->dmas);
       }

       FUNC1(0, &ch->dmadptr);
       FUNC1(0, &ch->dmandptr);
}