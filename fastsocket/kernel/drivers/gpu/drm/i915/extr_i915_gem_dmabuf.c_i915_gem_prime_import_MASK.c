#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_gem_object {struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct drm_i915_gem_object {struct drm_gem_object base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int /*<<< orphan*/  size; struct drm_i915_gem_object* priv; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_object* FUNC0 (struct dma_buf_attachment*) ; 
 struct drm_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dma_buf_attachment*) ; 
 struct dma_buf_attachment* FUNC3 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_buf*,struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int FUNC7 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_buf*) ; 
 int /*<<< orphan*/  i915_dmabuf_ops ; 
 struct drm_i915_gem_object* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  i915_gem_object_dmabuf_ops ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 

struct drm_gem_object *FUNC12(struct drm_device *dev,
					     struct dma_buf *dma_buf)
{
	struct dma_buf_attachment *attach;
	struct drm_i915_gem_object *obj;
	int ret;

	/* is this one of own objects? */
	if (dma_buf->ops == &i915_dmabuf_ops) {
		obj = dma_buf->priv;
		/* is it from our device? */
		if (obj->base.dev == dev) {
			/*
			 * Importing dmabuf exported from out own gem increases
			 * refcount on gem itself instead of f_count of dmabuf.
			 */
			FUNC6(&obj->base);
			return &obj->base;
		}
	}

	/* need to attach */
	attach = FUNC3(dma_buf, dev->dev);
	if (FUNC2(attach))
		return FUNC0(attach);

	FUNC8(dma_buf);

	obj = FUNC9(dev);
	if (obj == NULL) {
		ret = -ENOMEM;
		goto fail_detach;
	}

	ret = FUNC7(dev, &obj->base, dma_buf->size);
	if (ret) {
		FUNC10(obj);
		goto fail_detach;
	}

	FUNC11(obj, &i915_gem_object_dmabuf_ops);
	obj->base.import_attach = attach;

	return &obj->base;

fail_detach:
	FUNC4(dma_buf, attach);
	FUNC5(dma_buf);

	return FUNC1(ret);
}