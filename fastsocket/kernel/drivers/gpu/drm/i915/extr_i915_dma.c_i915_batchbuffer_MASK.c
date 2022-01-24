#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct drm_i915_master_private {scalar_t__ sarea_priv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__* primary; scalar_t__ dev_private; } ;
struct drm_clip_rect {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  last_dispatch; } ;
typedef  TYPE_4__ drm_i915_sarea_t ;
struct TYPE_11__ {int /*<<< orphan*/  allow_batchbuffer; } ;
struct TYPE_13__ {TYPE_3__ dri1; } ;
typedef  TYPE_5__ drm_i915_private_t ;
struct TYPE_14__ {int num_cliprects; int /*<<< orphan*/  cliprects; int /*<<< orphan*/  used; int /*<<< orphan*/  start; } ;
typedef  TYPE_6__ drm_i915_batchbuffer_t ;
struct TYPE_10__ {TYPE_1__* master; } ;
struct TYPE_9__ {struct drm_i915_master_private* driver_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 int FUNC4 (struct drm_clip_rect*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_device*,TYPE_6__*,struct drm_clip_rect*) ; 
 struct drm_clip_rect* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_clip_rect*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev, void *data,
			    struct drm_file *file_priv)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	struct drm_i915_master_private *master_priv = dev->primary->master->driver_priv;
	drm_i915_sarea_t *sarea_priv = (drm_i915_sarea_t *)
	    master_priv->sarea_priv;
	drm_i915_batchbuffer_t *batch = data;
	int ret;
	struct drm_clip_rect *cliprects = NULL;

	if (FUNC5(dev, DRIVER_MODESET))
		return -ENODEV;

	if (!dev_priv->dri1.allow_batchbuffer) {
		FUNC1("Batchbuffer ioctl disabled\n");
		return -EINVAL;
	}

	FUNC0("i915 batchbuffer, start %x used %d cliprects %d\n",
			batch->start, batch->used, batch->num_cliprects);

	FUNC3(dev, file_priv);

	if (batch->num_cliprects < 0)
		return -EINVAL;

	if (batch->num_cliprects) {
		cliprects = FUNC7(batch->num_cliprects,
				    sizeof(struct drm_clip_rect),
				    GFP_KERNEL);
		if (cliprects == NULL)
			return -ENOMEM;

		ret = FUNC4(cliprects, batch->cliprects,
				     batch->num_cliprects *
				     sizeof(struct drm_clip_rect));
		if (ret != 0) {
			ret = -EFAULT;
			goto fail_free;
		}
	}

	FUNC9(&dev->struct_mutex);
	ret = FUNC6(dev, batch, cliprects);
	FUNC10(&dev->struct_mutex);

	if (sarea_priv)
		sarea_priv->last_dispatch = FUNC2(dev_priv);

fail_free:
	FUNC8(cliprects);

	return ret;
}