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
struct b3dfg_dev {int cur_dma_frame_idx; int /*<<< orphan*/  buffer_lock; scalar_t__ cur_dma_frame_addr; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  pdev; scalar_t__ triplet_ready; scalar_t__ transmission_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  B3D_REG_HW_CTRL ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct b3dfg_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b3dfg_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct b3dfg_dev *fgdev)
{
	/* Disable all interrupts. */
	FUNC0(fgdev, B3D_REG_HW_CTRL, 0);

	/* Stop transmission. */
	FUNC3(&fgdev->buffer_lock);
	fgdev->transmission_enabled = 0;

	fgdev->cur_dma_frame_idx = -1;
	fgdev->triplet_ready = 0;
	if (fgdev->cur_dma_frame_addr) {
		FUNC2(fgdev->pdev, fgdev->cur_dma_frame_addr,
				 fgdev->frame_size, PCI_DMA_FROMDEVICE);
		fgdev->cur_dma_frame_addr = 0;
	}
	FUNC1(fgdev);
	FUNC4(&fgdev->buffer_lock);
}