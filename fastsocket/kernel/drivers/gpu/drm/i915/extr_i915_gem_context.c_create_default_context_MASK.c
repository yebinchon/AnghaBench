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
struct i915_hw_context {int /*<<< orphan*/  obj; } ;
struct drm_i915_private {TYPE_1__* ring; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_3__ {struct i915_hw_context* default_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONTEXT_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct i915_hw_context*) ; 
 int FUNC3 (struct i915_hw_context*) ; 
 size_t RCS ; 
 struct i915_hw_context* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_hw_context*) ; 
 int FUNC6 (struct i915_hw_context*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct drm_i915_private *dev_priv)
{
	struct i915_hw_context *ctx;
	int ret;

	FUNC0(!FUNC9(&dev_priv->dev->struct_mutex));

	ctx = FUNC4(dev_priv->dev, NULL);
	if (FUNC2(ctx))
		return FUNC3(ctx);

	/* We may need to do things with the shrinker which require us to
	 * immediately switch back to the default context. This can cause a
	 * problem as pinning the default context also requires GTT space which
	 * may not be available. To avoid this we always pin the
	 * default context.
	 */
	dev_priv->ring[RCS].default_context = ctx;
	ret = FUNC7(ctx->obj, CONTEXT_ALIGN, false, false);
	if (ret)
		goto err_destroy;

	ret = FUNC6(ctx);
	if (ret)
		goto err_unpin;

	FUNC1("Default HW context loaded\n");
	return 0;

err_unpin:
	FUNC8(ctx->obj);
err_destroy:
	FUNC5(ctx);
	return ret;
}