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
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,size_t) ; 

__attribute__((used)) static inline void FUNC4(unsigned long addr, size_t size,
	enum dma_data_direction direction)
{
	switch (direction) {
	case DMA_TO_DEVICE:
		FUNC2(addr, size);
		break;

	case DMA_FROM_DEVICE:
		FUNC1(addr, size);
		break;

	case DMA_BIDIRECTIONAL:
		FUNC3(addr, size);
		break;

	default:
		FUNC0();
	}
}