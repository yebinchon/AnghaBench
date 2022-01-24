#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int y; int x; } ;
struct drm_sarea {TYPE_3__ frame; } ;
struct drm_radeon_master_private {TYPE_4__* sarea_priv; TYPE_1__* sarea; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {TYPE_5__* dev_private; } ;
struct TYPE_8__ {int /*<<< orphan*/  boxes; } ;
struct TYPE_11__ {int front_offset; int back_offset; int front_pitch; int color_fmt; TYPE_2__ stats; scalar_t__ do_boxes; } ;
typedef  TYPE_5__ drm_radeon_private_t ;
struct TYPE_10__ {int pfCurrentPage; int crtc2_base; int /*<<< orphan*/  last_frame; } ;
struct TYPE_7__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RADEON_BOX_FLIP ; 
 int /*<<< orphan*/  RADEON_CRTC2_OFFSET ; 
 int /*<<< orphan*/  RADEON_CRTC_OFFSET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct drm_radeon_master_private*) ; 

void FUNC7(struct drm_device *dev, struct drm_master *master)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = master->driver_priv;
	struct drm_sarea *sarea = (struct drm_sarea *)master_priv->sarea->handle;
	int offset = (master_priv->sarea_priv->pfCurrentPage == 1)
	    ? dev_priv->front_offset : dev_priv->back_offset;
	RING_LOCALS;
	FUNC2("pfCurrentPage=%d\n",
		  master_priv->sarea_priv->pfCurrentPage);

	/* Do some trivial performance monitoring...
	 */
	if (dev_priv->do_boxes) {
		dev_priv->stats.boxes |= RADEON_BOX_FLIP;
		FUNC6(dev_priv, master_priv);
	}

	/* Update the frame offsets for both CRTCs
	 */
	FUNC1(6);

	FUNC5();
	FUNC3(RADEON_CRTC_OFFSET,
		     ((sarea->frame.y * dev_priv->front_pitch +
		       sarea->frame.x * (dev_priv->color_fmt - 2)) & ~7)
		     + offset);
	FUNC3(RADEON_CRTC2_OFFSET, master_priv->sarea_priv->crtc2_base
		     + offset);

	FUNC0();

	/* Increment the frame counter.  The client-side 3D driver must
	 * throttle the framerate by waiting for this value before
	 * performing the swapbuffer ioctl.
	 */
	master_priv->sarea_priv->last_frame++;
	master_priv->sarea_priv->pfCurrentPage =
		1 - master_priv->sarea_priv->pfCurrentPage;

	FUNC1(2);

	FUNC4(master_priv->sarea_priv->last_frame);

	FUNC0();
}