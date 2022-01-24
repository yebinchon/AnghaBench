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
struct drm_intel_sprite_colorkey {scalar_t__ flags; void* channel_mask; void* max_value; void* min_value; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ I915_SET_COLORKEY_DESTINATION ; 
 scalar_t__ I915_SET_COLORKEY_NONE ; 
 scalar_t__ I915_SET_COLORKEY_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPRITE_DEST_KEY ; 
 int SPRITE_SOURCE_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC5 (struct drm_plane*) ; 

__attribute__((used)) static void
FUNC6(struct drm_plane *plane, struct drm_intel_sprite_colorkey *key)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_plane *intel_plane;
	u32 sprctl;

	intel_plane = FUNC5(plane);

	key->min_value = FUNC0(FUNC4(intel_plane->pipe));
	key->max_value = FUNC0(FUNC2(intel_plane->pipe));
	key->channel_mask = FUNC0(FUNC3(intel_plane->pipe));
	key->flags = 0;

	sprctl = FUNC0(FUNC1(intel_plane->pipe));

	if (sprctl & SPRITE_DEST_KEY)
		key->flags = I915_SET_COLORKEY_DESTINATION;
	else if (sprctl & SPRITE_SOURCE_KEY)
		key->flags = I915_SET_COLORKEY_SOURCE;
	else
		key->flags = I915_SET_COLORKEY_NONE;
}