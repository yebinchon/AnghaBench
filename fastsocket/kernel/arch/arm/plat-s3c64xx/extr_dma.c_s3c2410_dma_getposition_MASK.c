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
struct s3c2410_dma_chan {scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PL080_CH_DST_ADDR ; 
 scalar_t__ PL080_CH_SRC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct s3c2410_dma_chan* FUNC2 (unsigned int) ; 

int FUNC3(unsigned int channel,
			    dma_addr_t *src, dma_addr_t *dst)
{
	struct s3c2410_dma_chan *chan = FUNC2(channel);

	FUNC0(!chan);
	if (!chan)
		return -EINVAL;

	if (src != NULL)
		*src = FUNC1(chan->regs + PL080_CH_SRC_ADDR);

	if (dst != NULL)
		*dst = FUNC1(chan->regs + PL080_CH_DST_ADDR);

	return 0;
}