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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int MAX_DMA_CHANNEL ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline unsigned FUNC2(unsigned dma_channel, unsigned selection)
{
	FUNC0(dma_channel >= MAX_DMA_CHANNEL);
	return (selection << (8 * dma_channel)) & FUNC1(dma_channel);
}