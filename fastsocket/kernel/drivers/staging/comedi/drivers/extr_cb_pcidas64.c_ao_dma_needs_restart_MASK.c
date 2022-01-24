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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned short PLX_DMA_DONE_BIT ; 
 unsigned short PLX_DMA_EN_BIT ; 
 scalar_t__ FUNC0 (struct comedi_device*) ; 

__attribute__((used)) static inline int FUNC1(struct comedi_device *dev,
				       unsigned short dma_status)
{
	if ((dma_status & PLX_DMA_DONE_BIT) == 0 ||
	    (dma_status & PLX_DMA_EN_BIT) == 0)
		return 0;
	if (FUNC0(dev))
		return 0;

	return 1;
}