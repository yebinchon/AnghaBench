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
struct intel_plane {int /*<<< orphan*/ * obj; int /*<<< orphan*/  (* disable_plane ) (struct drm_plane*) ;} ;
struct drm_plane {scalar_t__ crtc; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*) ; 
 struct intel_plane* FUNC5 (struct drm_plane*) ; 

__attribute__((used)) static int
FUNC6(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;
	struct intel_plane *intel_plane = FUNC5(plane);
	int ret = 0;

	if (plane->crtc)
		FUNC0(plane->crtc);
	intel_plane->disable_plane(plane);

	if (!intel_plane->obj)
		goto out;

	FUNC2(&dev->struct_mutex);
	FUNC1(intel_plane->obj);
	intel_plane->obj = NULL;
	FUNC3(&dev->struct_mutex);
out:

	return ret;
}