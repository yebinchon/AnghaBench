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
struct nouveau_pm_voltage {int /*<<< orphan*/  level; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_voltage voltage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 

void
FUNC2(struct drm_device *dev)
{
	struct nouveau_pm_voltage *volt = &FUNC1(dev)->voltage;

	FUNC0(volt->level);
}