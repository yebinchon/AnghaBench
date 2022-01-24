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
struct nouveau_drm {TYPE_1__* fbcon; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 

void
FUNC2(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC1(dev);
	FUNC0(&drm->fbcon->helper);
}