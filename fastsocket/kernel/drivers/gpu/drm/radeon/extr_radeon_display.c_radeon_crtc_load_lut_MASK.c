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
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {int /*<<< orphan*/  enabled; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 

void FUNC7(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;

	if (!crtc->enabled)
		return;

	if (FUNC2(rdev))
		FUNC5(crtc);
	else if (FUNC1(rdev))
		FUNC4(crtc);
	else if (FUNC0(rdev))
		FUNC3(crtc);
	else
		FUNC6(crtc);
}