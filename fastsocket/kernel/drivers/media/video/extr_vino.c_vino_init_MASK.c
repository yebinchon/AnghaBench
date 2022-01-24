#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vino_settings {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {void* fifo_thres; int /*<<< orphan*/  next_4_desc; } ;
struct TYPE_9__ {void* fifo_thres; int /*<<< orphan*/  next_4_desc; } ;
struct TYPE_12__ {TYPE_3__ b; TYPE_2__ a; scalar_t__ intr_status; scalar_t__ control; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; int /*<<< orphan*/ * dma_cpu; } ;
struct TYPE_11__ {TYPE_1__ dummy_desc_table; scalar_t__ dummy_page; TYPE_6__ v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VINO_DESC_FETCH_DELAY ; 
 int VINO_DUMMY_DESC_COUNT ; 
 void* VINO_FIFO_THRESHOLD_DEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_4__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_5__* vino ; 
 TYPE_4__* vino_drvdata ; 
 int /*<<< orphan*/  vino_init_stage ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	dma_addr_t dma_dummy_address;
	int err;
	int i;

	vino_drvdata = FUNC3(sizeof(struct vino_settings), GFP_KERNEL);
	if (!vino_drvdata) {
		FUNC7(vino_init_stage);
		return -ENOMEM;
	}
	vino_init_stage++;
	FUNC4(vino_drvdata->v4l2_dev.name, "vino",
			sizeof(vino_drvdata->v4l2_dev.name));
	err = FUNC6(NULL, &vino_drvdata->v4l2_dev);
	if (err)
		return err;
	vino_init_stage++;

	/* create a dummy dma descriptor */
	vino_drvdata->dummy_page = FUNC2(GFP_KERNEL | GFP_DMA);
	if (!vino_drvdata->dummy_page) {
		FUNC7(vino_init_stage);
		return -ENOMEM;
	}
	vino_init_stage++;

	// TODO: use page_count in dummy_desc_table

	vino_drvdata->dummy_desc_table.dma_cpu =
		FUNC0(NULL,
		VINO_DUMMY_DESC_COUNT * sizeof(dma_addr_t),
		&vino_drvdata->dummy_desc_table.dma,
		GFP_KERNEL | GFP_DMA);
	if (!vino_drvdata->dummy_desc_table.dma_cpu) {
		FUNC7(vino_init_stage);
		return -ENOMEM;
	}
	vino_init_stage++;

	dma_dummy_address = FUNC1(NULL,
					   (void *)vino_drvdata->dummy_page,
					PAGE_SIZE, DMA_FROM_DEVICE);
	for (i = 0; i < VINO_DUMMY_DESC_COUNT; i++) {
		vino_drvdata->dummy_desc_table.dma_cpu[i] = dma_dummy_address;
	}

	/* initialize VINO */

	vino->control = 0;
	vino->a.next_4_desc = vino_drvdata->dummy_desc_table.dma;
	vino->b.next_4_desc = vino_drvdata->dummy_desc_table.dma;
	FUNC5(VINO_DESC_FETCH_DELAY);

	vino->intr_status = 0;

	vino->a.fifo_thres = VINO_FIFO_THRESHOLD_DEFAULT;
	vino->b.fifo_thres = VINO_FIFO_THRESHOLD_DEFAULT;

	return 0;
}