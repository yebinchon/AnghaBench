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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ NV_50 ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC1(dev);
	unsigned htotal;

	if (FUNC2(drm->device)->card_type >= NV_50) {
		if (FUNC0(dev, 0, 0x00) == 0 &&
		    FUNC0(dev, 0, 0x1a) == 0)
			return false;
		return true;
	}

	htotal  = FUNC0(dev, 0, 0x06);
	htotal |= (FUNC0(dev, 0, 0x07) & 0x01) << 8;
	htotal |= (FUNC0(dev, 0, 0x07) & 0x20) << 4;
	htotal |= (FUNC0(dev, 0, 0x25) & 0x01) << 10;
	htotal |= (FUNC0(dev, 0, 0x41) & 0x01) << 11;

	return (htotal != 0);
}