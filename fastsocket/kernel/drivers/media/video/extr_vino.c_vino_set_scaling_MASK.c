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
struct TYPE_2__ {unsigned int left; unsigned int top; unsigned int right; unsigned int bottom; } ;
struct vino_channel_settings {unsigned int decimation; int /*<<< orphan*/  line_size; TYPE_1__ clipping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,...) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vino_channel_settings*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct vino_channel_settings *vcs,
			     unsigned int w, unsigned int h)
{
	unsigned int x, y, curw, curh, d;

	x = vcs->clipping.left;
	y = vcs->clipping.top;
	curw = vcs->clipping.right - vcs->clipping.left;
	curh = vcs->clipping.bottom - vcs->clipping.top;

	d = FUNC1(curw / w, curh / h);

	FUNC0("scaling w: %d, h: %d, curw: %d, curh: %d, d: %d\n",
		w, h, curw, curh, d);

	if (d < 1) {
		d = 1;
	} else if (d > 8) {
		d = 8;
	}

	vcs->decimation = d;
	FUNC2(vcs, x, y, w * d, h * d);

	FUNC0("scaling %d, %d, %d, %d / %d - %d\n", vcs->clipping.left,
		vcs->clipping.top, vcs->clipping.right, vcs->clipping.bottom,
		vcs->decimation, vcs->line_size);
}