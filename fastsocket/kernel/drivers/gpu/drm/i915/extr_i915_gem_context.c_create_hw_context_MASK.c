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
struct i915_hw_context {int id; struct drm_i915_file_private* file_priv; int /*<<< orphan*/ * ring; int /*<<< orphan*/ * obj; } ;
struct drm_i915_private {int /*<<< orphan*/ * ring; int /*<<< orphan*/  hw_context_size; } ;
struct drm_i915_file_private {int /*<<< orphan*/  context_idr; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_CONTEXT_ID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 struct i915_hw_context* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_CACHE_LLC_MLC ; 
 TYPE_1__* FUNC2 (struct drm_device*) ; 
 size_t RCS ; 
 int /*<<< orphan*/  FUNC3 (struct i915_hw_context*) ; 
 int /*<<< orphan*/ * FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct i915_hw_context*,scalar_t__,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_hw_context*) ; 
 struct i915_hw_context* FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_hw_context *
FUNC10(struct drm_device *dev,
		  struct drm_i915_file_private *file_priv)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct i915_hw_context *ctx;
	int ret, id;

	ctx = FUNC9(sizeof(struct drm_i915_file_private), GFP_KERNEL);
	if (ctx == NULL)
		return FUNC1(-ENOMEM);

	ctx->obj = FUNC4(dev, dev_priv->hw_context_size);
	if (ctx->obj == NULL) {
		FUNC8(ctx);
		FUNC0("Context object allocated failed\n");
		return FUNC1(-ENOMEM);
	}

	if (FUNC2(dev)->gen >= 7) {
		ret = FUNC5(ctx->obj,
						      I915_CACHE_LLC_MLC);
		if (ret)
			goto err_out;
	}

	/* The ring associated with the context object is handled by the normal
	 * object tracking code. We give an initial ring value simple to pass an
	 * assertion in the context switch code.
	 */
	ctx->ring = &dev_priv->ring[RCS];

	/* Default context will never have a file_priv */
	if (file_priv == NULL)
		return ctx;

	ctx->file_priv = file_priv;

again:
	if (FUNC7(&file_priv->context_idr, GFP_KERNEL) == 0) {
		ret = -ENOMEM;
		FUNC0("idr allocation failed\n");
		goto err_out;
	}

	ret = FUNC6(&file_priv->context_idr, ctx,
				DEFAULT_CONTEXT_ID + 1, &id);
	if (ret == 0)
		ctx->id = id;

	if (ret == -EAGAIN)
		goto again;
	else if (ret)
		goto err_out;

	return ctx;

err_out:
	FUNC3(ctx);
	return FUNC1(ret);
}