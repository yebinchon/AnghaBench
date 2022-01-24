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
typedef  int u32 ;
struct intel_plane {int /*<<< orphan*/  pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_intel_sprite_colorkey {int min_value; int max_value; int channel_mask; int flags; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int I915_SET_COLORKEY_DESTINATION ; 
 int I915_SET_COLORKEY_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SPRITE_DEST_KEY ; 
 int SPRITE_SOURCE_KEY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC7 (struct drm_plane*) ; 

__attribute__((used)) static int
FUNC8(struct drm_plane *plane,
		    struct drm_intel_sprite_colorkey *key)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_plane *intel_plane;
	u32 sprctl;
	int ret = 0;

	intel_plane = FUNC7(plane);

	FUNC1(FUNC6(intel_plane->pipe), key->min_value);
	FUNC1(FUNC4(intel_plane->pipe), key->max_value);
	FUNC1(FUNC5(intel_plane->pipe), key->channel_mask);

	sprctl = FUNC0(FUNC3(intel_plane->pipe));
	sprctl &= ~(SPRITE_SOURCE_KEY | SPRITE_DEST_KEY);
	if (key->flags & I915_SET_COLORKEY_DESTINATION)
		sprctl |= SPRITE_DEST_KEY;
	else if (key->flags & I915_SET_COLORKEY_SOURCE)
		sprctl |= SPRITE_SOURCE_KEY;
	FUNC1(FUNC3(intel_plane->pipe), sprctl);

	FUNC2(FUNC5(intel_plane->pipe));

	return ret;
}