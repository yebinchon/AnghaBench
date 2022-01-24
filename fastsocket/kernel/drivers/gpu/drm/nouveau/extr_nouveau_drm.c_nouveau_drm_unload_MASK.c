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
struct nouveau_drm {int /*<<< orphan*/  client; } ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_drm*) ; 

__attribute__((used)) static int
FUNC12(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC6(dev);

	FUNC7(dev);
	FUNC0(drm);

	FUNC9(dev);

	if (dev->mode_config.num_crtc)
		FUNC5(dev);
	FUNC4(dev);

	FUNC8(dev);
	FUNC2(dev);

	FUNC10(drm);
	FUNC1(drm);
	FUNC11(drm);

	FUNC3(&drm->client);
	return 0;
}