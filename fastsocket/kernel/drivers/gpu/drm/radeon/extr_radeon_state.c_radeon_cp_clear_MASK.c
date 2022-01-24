#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_file {TYPE_3__* master; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
struct TYPE_5__ {int nbox; } ;
typedef  TYPE_1__ drm_radeon_sarea_t ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  depth_boxes; } ;
typedef  TYPE_2__ drm_radeon_clear_t ;
typedef  int /*<<< orphan*/  drm_radeon_clear_rect_t ;
typedef  int /*<<< orphan*/  depth_boxes ;
struct TYPE_7__ {struct drm_radeon_master_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 int RADEON_NR_SAREA_CLIPRECTS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	struct drm_radeon_master_private *master_priv = file_priv->master->driver_priv;
	drm_radeon_sarea_t *sarea_priv = master_priv->sarea_priv;
	drm_radeon_clear_t *clear = data;
	drm_radeon_clear_rect_t depth_boxes[RADEON_NR_SAREA_CLIPRECTS];
	FUNC2("\n");

	FUNC3(dev, file_priv);

	FUNC4(dev_priv);

	if (sarea_priv->nbox > RADEON_NR_SAREA_CLIPRECTS)
		sarea_priv->nbox = RADEON_NR_SAREA_CLIPRECTS;

	if (FUNC1(&depth_boxes, clear->depth_boxes,
			       sarea_priv->nbox * sizeof(depth_boxes[0])))
		return -EFAULT;

	FUNC5(dev, file_priv->master, clear, depth_boxes);

	FUNC0();
	return 0;
}