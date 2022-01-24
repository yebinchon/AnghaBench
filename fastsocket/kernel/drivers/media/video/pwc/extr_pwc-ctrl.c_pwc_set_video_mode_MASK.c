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
struct TYPE_3__ {int x; int y; } ;
struct pwc_device {scalar_t__ frame_trailer_size; scalar_t__ frame_header_size; scalar_t__ frame_size; scalar_t__ frame_total_size; TYPE_1__ view; int /*<<< orphan*/  type; int /*<<< orphan*/  pixfmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct pwc_device*,int,int) ; 
 TYPE_2__* pwc_image_sizes ; 
 int /*<<< orphan*/  FUNC8 (struct pwc_device*) ; 
 int FUNC9 (struct pwc_device*,int,int,int,int) ; 
 int FUNC10 (struct pwc_device*,int,int) ; 
 int FUNC11 (struct pwc_device*,int,int,int,int) ; 
 int /*<<< orphan*/ * size2name ; 

int FUNC12(struct pwc_device *pdev, int width, int height, int frames, int compression, int snapshot)
{
	int ret, size;

	FUNC2("set_video_mode(%dx%d @ %d, pixfmt %08x).\n", width, height, frames, pdev->pixfmt);
	size = FUNC7(pdev, width, height);
	if (size < 0) {
		FUNC3("Could not find suitable size.\n");
		return -ERANGE;
	}
	FUNC6("decode_size = %d.\n", size);

	if (FUNC0(pdev->type)) {
		ret = FUNC10(pdev, size, frames);

	} else if (FUNC1(pdev->type)) {
		ret = FUNC9(pdev, size, frames, compression, snapshot);

	} else {
		ret = FUNC11(pdev, size, frames, compression, snapshot);
	}
	if (ret < 0) {
		FUNC5("Failed to set video mode %s@%d fps; return code = %d\n", size2name[size], frames, ret);
		return ret;
	}
	pdev->view.x = width;
	pdev->view.y = height;
	pdev->frame_total_size = pdev->frame_size + pdev->frame_header_size + pdev->frame_trailer_size;
	FUNC8(pdev);
	FUNC4("Set viewport to %dx%d, image size is %dx%d.\n", width, height, pwc_image_sizes[size].x, pwc_image_sizes[size].y);
	return 0;
}