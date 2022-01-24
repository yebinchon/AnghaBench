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
struct b3dfg_dev {unsigned int frame_size; unsigned int cur_dma_frame_addr; int cur_dma_frame_idx; int /*<<< orphan*/  pdev; } ;
struct b3dfg_buffer {unsigned char** frame; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  B3D_REG_EC220_DMA_ADDR ; 
 int /*<<< orphan*/  B3D_REG_EC220_DMA_STS ; 
 int /*<<< orphan*/  B3D_REG_EC220_TRF_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct b3dfg_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned char*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct b3dfg_dev *fgdev,
	struct b3dfg_buffer *buf, int frame)
{
	unsigned char *frm_addr;
	dma_addr_t frm_addr_dma;
	unsigned int frm_size = fgdev->frame_size;

	frm_addr = buf->frame[frame];
	frm_addr_dma = FUNC3(fgdev->pdev, frm_addr,
					  frm_size, PCI_DMA_FROMDEVICE);
	if (FUNC2(fgdev->pdev, frm_addr_dma))
		return -ENOMEM;

	fgdev->cur_dma_frame_addr = frm_addr_dma;
	fgdev->cur_dma_frame_idx = frame;

	FUNC0(fgdev, B3D_REG_EC220_DMA_ADDR,
					FUNC1(frm_addr_dma));
	FUNC0(fgdev, B3D_REG_EC220_TRF_SIZE,
					FUNC1(frm_size >> 2));
	FUNC0(fgdev, B3D_REG_EC220_DMA_STS, 0xf);

	return 0;
}