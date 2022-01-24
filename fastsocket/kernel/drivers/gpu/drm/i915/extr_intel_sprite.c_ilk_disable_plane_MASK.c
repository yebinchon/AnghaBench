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
struct intel_plane {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int DVS_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC7 (struct drm_plane*) ; 

__attribute__((used)) static void
FUNC8(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_plane *intel_plane = FUNC7(plane);
	int pipe = intel_plane->pipe;

	FUNC5(FUNC0(pipe), FUNC4(FUNC0(pipe)) & ~DVS_ENABLE);
	/* Disable the scaler */
	FUNC5(FUNC1(pipe), 0);
	/* Flush double buffered register updates */
	FUNC3(FUNC2(pipe), 0);
	FUNC6(FUNC2(pipe));
}