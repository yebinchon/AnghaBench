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
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC4 (struct drm_device*,int) ; 
 int FUNC5 (struct drm_i915_gem_object*,int,int,int) ; 
 int FUNC6 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC9(struct drm_device *dev)
{
	struct drm_i915_gem_object *ctx;
	int ret;

	FUNC2(!FUNC8(&dev->struct_mutex));

	ctx = FUNC4(dev, 4096);
	if (!ctx) {
		FUNC0("failed to alloc power context, RC6 disabled\n");
		return NULL;
	}

	ret = FUNC5(ctx, 4096, true, false);
	if (ret) {
		FUNC1("failed to pin power context: %d\n", ret);
		goto err_unref;
	}

	ret = FUNC6(ctx, 1);
	if (ret) {
		FUNC1("failed to set-domain on power context: %d\n", ret);
		goto err_unpin;
	}

	return ctx;

err_unpin:
	FUNC7(ctx);
err_unref:
	FUNC3(&ctx->base);
	return NULL;
}