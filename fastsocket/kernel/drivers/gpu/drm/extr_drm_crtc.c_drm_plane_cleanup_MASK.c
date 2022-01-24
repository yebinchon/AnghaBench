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
struct drm_plane {int /*<<< orphan*/  head; int /*<<< orphan*/  base; int /*<<< orphan*/  format_types; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_plane; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;

	FUNC1(dev);
	FUNC3(plane->format_types);
	FUNC0(dev, &plane->base);
	/* if not added to a list, it must be a private plane */
	if (!FUNC5(&plane->head)) {
		FUNC4(&plane->head);
		dev->mode_config.num_plane--;
	}
	FUNC2(dev);
}