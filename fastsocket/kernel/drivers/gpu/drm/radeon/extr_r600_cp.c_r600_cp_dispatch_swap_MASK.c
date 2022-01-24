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
typedef  scalar_t__ uint64_t ;
struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_clip_rect {int x1; int y1; int x2; int y2; } ;
struct TYPE_3__ {int nbox; scalar_t__ pfCurrentPage; int /*<<< orphan*/  last_frame; struct drm_clip_rect* boxes; } ;
typedef  TYPE_1__ drm_radeon_sarea_t ;
struct TYPE_4__ {scalar_t__ color_fmt; int back_pitch; int front_pitch; scalar_t__ fb_location; scalar_t__ back_offset; scalar_t__ front_offset; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RADEON_COLOR_FORMAT_ARGB8888 ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,scalar_t__,scalar_t__,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*,struct drm_file*) ; 

void FUNC8(struct drm_device *dev, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_master *master = file_priv->master;
	struct drm_radeon_master_private *master_priv = master->driver_priv;
	drm_radeon_sarea_t *sarea_priv = master_priv->sarea_priv;
	int nbox = sarea_priv->nbox;
	struct drm_clip_rect *pbox = sarea_priv->boxes;
	int i, cpp, src_pitch, dst_pitch;
	uint64_t src, dst;
	RING_LOCALS;
	FUNC2("\n");

	if (dev_priv->color_fmt == RADEON_COLOR_FORMAT_ARGB8888)
		cpp = 4;
	else
		cpp = 2;

	if (sarea_priv->pfCurrentPage == 0) {
		src_pitch = dev_priv->back_pitch;
		dst_pitch = dev_priv->front_pitch;
		src = dev_priv->back_offset + dev_priv->fb_location;
		dst = dev_priv->front_offset + dev_priv->fb_location;
	} else {
		src_pitch = dev_priv->front_pitch;
		dst_pitch = dev_priv->back_pitch;
		src = dev_priv->front_offset + dev_priv->fb_location;
		dst = dev_priv->back_offset + dev_priv->fb_location;
	}

	if (FUNC7(dev, file_priv)) {
		FUNC3("unable to allocate vertex buffer for swap buffer\n");
		return;
	}
	for (i = 0; i < nbox; i++) {
		int x = pbox[i].x1;
		int y = pbox[i].y1;
		int w = pbox[i].x2 - x;
		int h = pbox[i].y2 - y;

		FUNC2("%d,%d-%d,%d\n", x, y, w, h);

		FUNC5(dev,
			       src, dst,
			       x, y, x, y, w, h,
			       src_pitch, dst_pitch, cpp);
	}
	FUNC6(dev);

	/* Increment the frame counter.  The client-side 3D driver must
	 * throttle the framerate by waiting for this value before
	 * performing the swapbuffer ioctl.
	 */
	sarea_priv->last_frame++;

	FUNC1(3);
	FUNC4(sarea_priv->last_frame);
	FUNC0();
}