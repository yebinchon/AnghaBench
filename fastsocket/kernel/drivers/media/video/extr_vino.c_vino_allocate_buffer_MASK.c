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
struct TYPE_2__ {unsigned long* virtual; unsigned int page_count; scalar_t__* dma_cpu; int /*<<< orphan*/  dma; } ;
struct vino_framebuffer {unsigned int size; TYPE_1__ desc_table; int /*<<< orphan*/  data_format; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VINO_DATA_FMT_NONE ; 
 scalar_t__ VINO_DESC_STOP ; 
 unsigned int VINO_PAGE_RATIO ; 
 unsigned int VINO_PAGE_SIZE ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 scalar_t__ FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vino_framebuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vino_framebuffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(struct vino_framebuffer *fb,
				unsigned int size)
{
	unsigned int count, i, j;
	int ret = 0;

	FUNC3("vino_allocate_buffer():\n");

	if (size < 1)
		return -EINVAL;

	FUNC7(fb, 0, sizeof(struct vino_framebuffer));

	count = ((size / PAGE_SIZE) + 4) & ~3;

	FUNC3("vino_allocate_buffer(): size = %d, count = %d\n",
		size, count);

	/* allocate memory for table with virtual (page) addresses */
	fb->desc_table.virtual = (unsigned long *)
		FUNC6(count * sizeof(unsigned long), GFP_KERNEL);
	if (!fb->desc_table.virtual)
		return -ENOMEM;

	/* allocate memory for table with dma addresses
	 * (has space for four extra descriptors) */
	fb->desc_table.dma_cpu =
		FUNC1(NULL, VINO_PAGE_RATIO * (count + 4) *
				   sizeof(dma_addr_t), &fb->desc_table.dma,
				   GFP_KERNEL | GFP_DMA);
	if (!fb->desc_table.dma_cpu) {
		ret = -ENOMEM;
		goto out_free_virtual;
	}

	/* allocate pages for the buffer and acquire the according
	 * dma addresses */
	for (i = 0; i < count; i++) {
		dma_addr_t dma_data_addr;

		fb->desc_table.virtual[i] =
			FUNC4(GFP_KERNEL | GFP_DMA);
		if (!fb->desc_table.virtual[i]) {
			ret = -ENOBUFS;
			break;
		}

		dma_data_addr =
			FUNC2(NULL,
				       (void *)fb->desc_table.virtual[i],
				       PAGE_SIZE, DMA_FROM_DEVICE);

		for (j = 0; j < VINO_PAGE_RATIO; j++) {
			fb->desc_table.dma_cpu[VINO_PAGE_RATIO * i + j] =
				dma_data_addr + VINO_PAGE_SIZE * j;
		}

		FUNC0(FUNC9((void *)fb->desc_table.virtual[i]));
	}

	/* page_count needs to be set anyway, because the descriptor table has
	 * been allocated according to this number */
	fb->desc_table.page_count = count;

	if (ret) {
		/* the descriptor with index i doesn't contain
		 * a valid address yet */
		FUNC8(fb, i);
		return ret;
	}

	//fb->size = size;
	fb->size = count * PAGE_SIZE;
	fb->data_format = VINO_DATA_FMT_NONE;

	/* set the dma stop-bit for the last (count+1)th descriptor */
	fb->desc_table.dma_cpu[VINO_PAGE_RATIO * count] = VINO_DESC_STOP;
	return 0;

 out_free_virtual:
	FUNC5(fb->desc_table.virtual);
	return ret;
}