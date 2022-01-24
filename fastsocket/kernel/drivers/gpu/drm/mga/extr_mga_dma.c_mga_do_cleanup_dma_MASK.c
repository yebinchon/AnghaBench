#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_3__* agp_buffer_map; TYPE_1__* agp; TYPE_2__* dev_private; scalar_t__ irq_enabled; } ;
struct drm_agp_buffer {scalar_t__ handle; } ;
struct drm_agp_binding {scalar_t__ handle; } ;
struct TYPE_5__ {scalar_t__ agp_handle; int /*<<< orphan*/ * head; int /*<<< orphan*/ * warp_pipe_phys; scalar_t__ warp_pipe; int /*<<< orphan*/  prim; scalar_t__ used_new_dma_init; int /*<<< orphan*/ * status; int /*<<< orphan*/ * mmio; int /*<<< orphan*/ * sarea_priv; int /*<<< orphan*/ * sarea; TYPE_3__* primary; TYPE_3__* warp; scalar_t__ agp_size; int /*<<< orphan*/ * agp_textures; } ;
typedef  TYPE_2__ drm_mga_private_t ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ acquired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ _DRM_CONSISTENT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_agp_buffer*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_agp_binding*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, int full_cleanup)
{
	int err = 0;
	FUNC0("\n");

	/* Make sure interrupts are disabled here because the uninstall ioctl
	 * may not have been called from userspace and after dev_private
	 * is freed, it's too late.
	 */
	if (dev->irq_enabled)
		FUNC5(dev);

	if (dev->dev_private) {
		drm_mga_private_t *dev_priv = dev->dev_private;

		if ((dev_priv->warp != NULL)
		    && (dev_priv->warp->type != _DRM_CONSISTENT))
			FUNC4(dev_priv->warp, dev);

		if ((dev_priv->primary != NULL)
		    && (dev_priv->primary->type != _DRM_CONSISTENT))
			FUNC4(dev_priv->primary, dev);

		if (dev->agp_buffer_map != NULL)
			FUNC4(dev->agp_buffer_map, dev);

		if (dev_priv->used_new_dma_init) {
#if __OS_HAS_AGP
			if (dev_priv->agp_handle != 0) {
				struct drm_agp_binding unbind_req;
				struct drm_agp_buffer free_req;

				unbind_req.handle = dev_priv->agp_handle;
				drm_agp_unbind(dev, &unbind_req);

				free_req.handle = dev_priv->agp_handle;
				drm_agp_free(dev, &free_req);

				dev_priv->agp_textures = NULL;
				dev_priv->agp_size = 0;
				dev_priv->agp_handle = 0;
			}

			if ((dev->agp != NULL) && dev->agp->acquired)
				err = drm_agp_release(dev);
#endif
		}

		dev_priv->warp = NULL;
		dev_priv->primary = NULL;
		dev_priv->sarea = NULL;
		dev_priv->sarea_priv = NULL;
		dev->agp_buffer_map = NULL;

		if (full_cleanup) {
			dev_priv->mmio = NULL;
			dev_priv->status = NULL;
			dev_priv->used_new_dma_init = 0;
		}

		FUNC6(&dev_priv->prim, 0, sizeof(dev_priv->prim));
		dev_priv->warp_pipe = 0;
		FUNC6(dev_priv->warp_pipe_phys, 0,
		       sizeof(dev_priv->warp_pipe_phys));

		if (dev_priv->head != NULL)
			FUNC7(dev);
	}

	return err;
}