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
typedef  int u8 ;
struct nouveau_pm_voltage {int vid_mask; } ;
struct nouveau_gpio {int (* get ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_voltage voltage; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 struct nouveau_gpio* FUNC1 (struct nouveau_device*) ; 
 TYPE_1__* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,int) ; 
 int nr_vidtag ; 
 int FUNC4 (struct nouveau_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * vidtag ; 

int
FUNC5(struct drm_device *dev)
{
	struct nouveau_pm_voltage *volt = &FUNC2(dev)->voltage;
	struct nouveau_device *device = FUNC0(dev);
	struct nouveau_gpio *gpio = FUNC1(device);
	u8 vid = 0;
	int i;

	for (i = 0; i < nr_vidtag; i++) {
		if (!(volt->vid_mask & (1 << i)))
			continue;

		vid |= gpio->get(gpio, 0, vidtag[i], 0xff) << i;
	}

	return FUNC3(dev, vid);
}