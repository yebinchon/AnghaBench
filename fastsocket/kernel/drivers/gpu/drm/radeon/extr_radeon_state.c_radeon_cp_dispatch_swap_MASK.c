#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_clip_rect {int x1; int y1; int x2; int y2; } ;
struct TYPE_4__ {int nbox; scalar_t__ pfCurrentPage; int /*<<< orphan*/  last_frame; struct drm_clip_rect* boxes; } ;
typedef  TYPE_1__ drm_radeon_sarea_t ;
struct TYPE_5__ {int color_fmt; int back_pitch_offset; int front_pitch_offset; scalar_t__ do_boxes; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  RADEON_DP_GUI_MASTER_CNTL ; 
 int RADEON_DP_SRC_SOURCE_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int RADEON_GMC_BRUSH_NONE ; 
 int RADEON_GMC_CLR_CMP_CNTL_DIS ; 
 int RADEON_GMC_DST_PITCH_OFFSET_CNTL ; 
 int RADEON_GMC_SRC_DATATYPE_COLOR ; 
 int RADEON_GMC_SRC_PITCH_OFFSET_CNTL ; 
 int RADEON_GMC_WR_MSK_DIS ; 
 int RADEON_ROP3_S ; 
 int /*<<< orphan*/  RADEON_SRC_PITCH_OFFSET ; 
 int /*<<< orphan*/  RADEON_SRC_X_Y ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct drm_radeon_master_private*) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev, struct drm_master *master)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = master->driver_priv;
	drm_radeon_sarea_t *sarea_priv = master_priv->sarea_priv;
	int nbox = sarea_priv->nbox;
	struct drm_clip_rect *pbox = sarea_priv->boxes;
	int i;
	RING_LOCALS;
	FUNC3("\n");

	/* Do some trivial performance monitoring...
	 */
	if (dev_priv->do_boxes)
		FUNC8(dev_priv, master_priv);

	/* Wait for the 3D stream to idle before dispatching the bitblt.
	 * This will prevent data corruption between the two streams.
	 */
	FUNC1(2);

	FUNC7();

	FUNC0();

	for (i = 0; i < nbox; i++) {
		int x = pbox[i].x1;
		int y = pbox[i].y1;
		int w = pbox[i].x2 - x;
		int h = pbox[i].y2 - y;

		FUNC3("%d,%d-%d,%d\n", x, y, w, h);

		FUNC1(9);

		FUNC4(FUNC2(RADEON_DP_GUI_MASTER_CNTL, 0));
		FUNC4(RADEON_GMC_SRC_PITCH_OFFSET_CNTL |
			 RADEON_GMC_DST_PITCH_OFFSET_CNTL |
			 RADEON_GMC_BRUSH_NONE |
			 (dev_priv->color_fmt << 8) |
			 RADEON_GMC_SRC_DATATYPE_COLOR |
			 RADEON_ROP3_S |
			 RADEON_DP_SRC_SOURCE_MEMORY |
			 RADEON_GMC_CLR_CMP_CNTL_DIS | RADEON_GMC_WR_MSK_DIS);

		/* Make this work even if front & back are flipped:
		 */
		FUNC4(FUNC2(RADEON_SRC_PITCH_OFFSET, 1));
		if (sarea_priv->pfCurrentPage == 0) {
			FUNC4(dev_priv->back_pitch_offset);
			FUNC4(dev_priv->front_pitch_offset);
		} else {
			FUNC4(dev_priv->front_pitch_offset);
			FUNC4(dev_priv->back_pitch_offset);
		}

		FUNC4(FUNC2(RADEON_SRC_X_Y, 2));
		FUNC4((x << 16) | y);
		FUNC4((x << 16) | y);
		FUNC4((w << 16) | h);

		FUNC0();
	}

	/* Increment the frame counter.  The client-side 3D driver must
	 * throttle the framerate by waiting for this value before
	 * performing the swapbuffer ioctl.
	 */
	sarea_priv->last_frame++;

	FUNC1(4);

	FUNC5(sarea_priv->last_frame);
	FUNC6();

	FUNC0();
}