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
struct TYPE_3__ {int /*<<< orphan*/  sizeimage; } ;
struct cafe_camera {int nbufs; int /*<<< orphan*/ * dma_handles; int /*<<< orphan*/ ** dma_bufs; int /*<<< orphan*/  dma_buf_size; TYPE_2__* pdev; TYPE_1__ pix_format; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_buf_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int n_dma_bufs ; 

__attribute__((used)) static int FUNC6(struct cafe_camera *cam, int loadtime)
{
	int i;

	FUNC0(cam, 1);
	if (loadtime)
		cam->dma_buf_size = dma_buf_size;
	else
		cam->dma_buf_size = cam->pix_format.sizeimage;
	if (n_dma_bufs > 3)
		n_dma_bufs = 3;

	cam->nbufs = 0;
	for (i = 0; i < n_dma_bufs; i++) {
		cam->dma_bufs[i] = FUNC3(&cam->pdev->dev,
				cam->dma_buf_size, cam->dma_handles + i,
				GFP_KERNEL);
		if (cam->dma_bufs[i] == NULL) {
			FUNC2(cam, "Failed to allocate DMA buffer\n");
			break;
		}
		/* For debug, remove eventually */
		FUNC5(cam->dma_bufs[i], 0xcc, cam->dma_buf_size);
		(cam->nbufs)++;
	}

	switch (cam->nbufs) {
	case 1:
	    FUNC4(&cam->pdev->dev, cam->dma_buf_size,
			    cam->dma_bufs[0], cam->dma_handles[0]);
	    cam->nbufs = 0;
	case 0:
	    FUNC1(cam, "Insufficient DMA buffers, cannot operate\n");
	    return -ENOMEM;

	case 2:
	    if (n_dma_bufs > 2)
		    FUNC2(cam, "Will limp along with only 2 buffers\n");
	    break;
	}
	return 0;
}