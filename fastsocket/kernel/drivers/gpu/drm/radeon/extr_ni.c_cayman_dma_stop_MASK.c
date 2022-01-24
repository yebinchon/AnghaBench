#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  visible_vram_size; } ;
struct radeon_device {TYPE_1__* ring; TYPE_2__ mc; } ;
struct TYPE_3__ {int ready; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 scalar_t__ DMA0_REGISTER_OFFSET ; 
 scalar_t__ DMA1_REGISTER_OFFSET ; 
 scalar_t__ DMA_RB_CNTL ; 
 int /*<<< orphan*/  DMA_RB_ENABLE ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev)
{
	u32 rb_cntl;

	FUNC2(rdev, rdev->mc.visible_vram_size);

	/* dma0 */
	rb_cntl = FUNC0(DMA_RB_CNTL + DMA0_REGISTER_OFFSET);
	rb_cntl &= ~DMA_RB_ENABLE;
	FUNC1(DMA_RB_CNTL + DMA0_REGISTER_OFFSET, rb_cntl);

	/* dma1 */
	rb_cntl = FUNC0(DMA_RB_CNTL + DMA1_REGISTER_OFFSET);
	rb_cntl &= ~DMA_RB_ENABLE;
	FUNC1(DMA_RB_CNTL + DMA1_REGISTER_OFFSET, rb_cntl);

	rdev->ring[R600_RING_TYPE_DMA_INDEX].ready = false;
	rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX].ready = false;
}