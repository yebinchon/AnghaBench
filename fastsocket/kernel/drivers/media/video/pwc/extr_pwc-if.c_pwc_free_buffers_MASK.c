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
struct pwc_device {int len_per_image; int /*<<< orphan*/ * image_data; TYPE_2__* decompress_data; TYPE_2__* fbuf; TYPE_1__* sbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {TYPE_2__* data; } ;

/* Variables and functions */
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int default_fbufs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int pwc_mbufs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pwc_device *pdev)
{
	int i;

	FUNC0("Entering free_buffers(%p).\n", pdev);

	if (pdev == NULL)
		return;
	/* Release Iso-pipe buffers */
	for (i = 0; i < MAX_ISO_BUFS; i++)
		if (pdev->sbuf[i].data != NULL) {
			FUNC0("Freeing ISO buffer at %p.\n", pdev->sbuf[i].data);
			FUNC1(pdev->sbuf[i].data);
			pdev->sbuf[i].data = NULL;
		}

	/* The same for frame buffers */
	if (pdev->fbuf != NULL) {
		for (i = 0; i < default_fbufs; i++) {
			if (pdev->fbuf[i].data != NULL) {
				FUNC0("Freeing frame buffer %d at %p.\n", i, pdev->fbuf[i].data);
				FUNC3(pdev->fbuf[i].data);
				pdev->fbuf[i].data = NULL;
			}
		}
		FUNC1(pdev->fbuf);
		pdev->fbuf = NULL;
	}

	/* Intermediate decompression buffer & tables */
	if (pdev->decompress_data != NULL) {
		FUNC0("Freeing decompression buffer at %p.\n", pdev->decompress_data);
		FUNC1(pdev->decompress_data);
		pdev->decompress_data = NULL;
	}

	/* Release image buffers */
	if (pdev->image_data != NULL) {
		FUNC0("Freeing image buffer at %p.\n", pdev->image_data);
		FUNC2(pdev->image_data, pwc_mbufs * pdev->len_per_image);
	}
	pdev->image_data = NULL;

	FUNC0("Leaving free_buffers().\n");
}