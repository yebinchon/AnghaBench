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
struct video_window {int width; int height; } ;
struct uvd {int curframe; TYPE_1__* frame; int /*<<< orphan*/  dp; scalar_t__ user_data; } ;
struct qcm {int size; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_3__ {scalar_t__ seqRead_Index; scalar_t__ seqRead_Length; scalar_t__ curline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int EINVAL ; 
 int MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* camera_sizes ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC5 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC6 (struct uvd*) ; 

__attribute__((used)) static int FUNC7(struct uvd *uvd, struct video_window *vw)
{
	int ret;
	int newsize;
	int oldsize;
	int x = vw->width;
	int y = vw->height;
	struct qcm *cam = (struct qcm *) uvd->user_data;

	if (x > 0 && y > 0) {
		FUNC1(2, "trying to find size %d,%d", x, y);
		for (newsize = 0; newsize <= MAX_FRAME_SIZE; newsize++) {
			if ((camera_sizes[newsize].width == x) &&
				(camera_sizes[newsize].height == y))
				break;
		}
	} else
		newsize = cam->size;

	if (newsize > MAX_FRAME_SIZE) {
		FUNC1(1, "couldn't find size %d,%d", x, y);
		return -EINVAL;
	}

	if (newsize == cam->size) {
		FUNC1(1, "Nothing to do");
		return 0;
	}

	FUNC6(uvd);

	if (cam->size != newsize) {
		oldsize = cam->size;
		cam->size = newsize;
		ret = FUNC4(uvd);
		if (ret) {
			FUNC3("Couldn't set camera size, err=%d",ret);
			/* restore the original size */
			cam->size = oldsize;
			return ret;
		}
	}

	/* Flush the input queue and clear any current frame in progress */

	FUNC2(&uvd->dp);
	if (uvd->curframe != -1) {
		uvd->frame[uvd->curframe].curline = 0;
		uvd->frame[uvd->curframe].seqRead_Length = 0;
		uvd->frame[uvd->curframe].seqRead_Index = 0;
	}

	FUNC0(ret, FUNC5(uvd));
	return 0;
}