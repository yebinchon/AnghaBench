#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  dma; int /*<<< orphan*/ * dma_cpu; } ;
struct TYPE_7__ {int /*<<< orphan*/ * vdev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * vdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dummy_page; TYPE_3__ dummy_desc_table; TYPE_2__ a; TYPE_1__ b; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SGI_VINO_IRQ ; 
 int VINO_DUMMY_DESC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vino ; 
 TYPE_4__* vino_drvdata ; 
 int /*<<< orphan*/  vino_i2c_adapter ; 

__attribute__((used)) static void FUNC11(int stage)
{
	switch(stage) {
	case 11:
		FUNC10(vino_drvdata->b.vdev);
		vino_drvdata->b.vdev = NULL;
	case 10:
		FUNC10(vino_drvdata->a.vdev);
		vino_drvdata->a.vdev = NULL;
	case 9:
		FUNC5(&vino_i2c_adapter);
	case 8:
		FUNC3(SGI_VINO_IRQ, NULL);
	case 7:
		if (vino_drvdata->b.vdev) {
			FUNC9(vino_drvdata->b.vdev);
			vino_drvdata->b.vdev = NULL;
		}
	case 6:
		if (vino_drvdata->a.vdev) {
			FUNC9(vino_drvdata->a.vdev);
			vino_drvdata->a.vdev = NULL;
		}
	case 5:
		/* all entries in dma_cpu dummy table have the same address */
		FUNC1(NULL,
				 vino_drvdata->dummy_desc_table.dma_cpu[0],
				 PAGE_SIZE, DMA_FROM_DEVICE);
		FUNC0(NULL, VINO_DUMMY_DESC_COUNT
				  * sizeof(dma_addr_t),
				  (void *)vino_drvdata->
				  dummy_desc_table.dma_cpu,
				  vino_drvdata->dummy_desc_table.dma);
	case 4:
		FUNC4(vino_drvdata->dummy_page);
	case 3:
		FUNC8(&vino_drvdata->v4l2_dev);
	case 2:
		FUNC7(vino_drvdata);
	case 1:
		FUNC6(vino);
	case 0:
		break;
	default:
		FUNC2("vino_module_cleanup(): invalid cleanup stage = %d\n",
			stage);
	}
}