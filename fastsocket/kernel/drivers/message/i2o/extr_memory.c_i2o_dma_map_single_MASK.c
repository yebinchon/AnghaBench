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
typedef  size_t u32 ;
struct i2o_controller {scalar_t__ pae_support; TYPE_1__* pdev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 size_t PAGE_SIZE ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

dma_addr_t FUNC5(struct i2o_controller *c, void *ptr,
					    size_t size,
					    enum dma_data_direction direction,
					    u32 ** sg_ptr)
{
	u32 sg_flags;
	u32 *mptr = *sg_ptr;
	dma_addr_t dma_addr;

	switch (direction) {
	case DMA_TO_DEVICE:
		sg_flags = 0xd4000000;
		break;
	case DMA_FROM_DEVICE:
		sg_flags = 0xd0000000;
		break;
	default:
		return 0;
	}

	dma_addr = FUNC1(&c->pdev->dev, ptr, size, direction);
	if (!FUNC2(&c->pdev->dev, dma_addr)) {
#ifdef CONFIG_I2O_EXT_ADAPTEC_DMA64
		if ((sizeof(dma_addr_t) > 4) && c->pae_support) {
			*mptr++ = cpu_to_le32(0x7C020002);
			*mptr++ = cpu_to_le32(PAGE_SIZE);
		}
#endif

		*mptr++ = FUNC0(sg_flags | size);
		*mptr++ = FUNC0(FUNC4(dma_addr));
#ifdef CONFIG_I2O_EXT_ADAPTEC_DMA64
		if ((sizeof(dma_addr_t) > 4) && c->pae_support)
			*mptr++ = cpu_to_le32(i2o_dma_high(dma_addr));
#endif
		*sg_ptr = mptr;
	}
	return dma_addr;
}