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
struct s3c2410_dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C2410_DMA_DCDST ; 
 int /*<<< orphan*/  S3C2410_DMA_DCSRC ; 
 int /*<<< orphan*/  FUNC0 (struct s3c2410_dma_chan*,int /*<<< orphan*/ ) ; 
 struct s3c2410_dma_chan* FUNC1 (unsigned int) ; 

int FUNC2(unsigned int channel, dma_addr_t *src, dma_addr_t *dst)
{
	struct s3c2410_dma_chan *chan = FUNC1(channel);

	if (chan == NULL)
		return -EINVAL;

	if (src != NULL)
 		*src = FUNC0(chan, S3C2410_DMA_DCSRC);

 	if (dst != NULL)
 		*dst = FUNC0(chan, S3C2410_DMA_DCDST);

 	return 0;
}