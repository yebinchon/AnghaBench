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
struct intel_plane {int pipe; scalar_t__ can_scale; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int sprite_scaling_enabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int SPRITE_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 struct intel_plane* FUNC8 (struct drm_plane*) ; 

__attribute__((used)) static void
FUNC9(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_plane *intel_plane = FUNC8(plane);
	int pipe = intel_plane->pipe;
	bool scaling_was_enabled = dev_priv->sprite_scaling_enabled;

	FUNC2(FUNC4(pipe), FUNC1(FUNC4(pipe)) & ~SPRITE_ENABLE);
	/* Can't leave the scaler enabled... */
	if (intel_plane->can_scale)
		FUNC2(FUNC5(pipe), 0);
	/* Activate double buffered register update */
	FUNC0(FUNC6(pipe), 0);
	FUNC3(FUNC6(pipe));

	dev_priv->sprite_scaling_enabled &= ~(1 << pipe);

	/* potentially re-enable LP watermarks */
	if (scaling_was_enabled && !dev_priv->sprite_scaling_enabled)
		FUNC7(dev);
}