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
struct drm_device {int pci_device; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_10 ; 
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC2(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC0(dev);
	const int impl = dev->pci_device & 0x0ff0;

	if (FUNC1(drm->device)->card_type >= NV_10 && impl != 0x0100 &&
	    impl != 0x0150 && impl != 0x01a0 && impl != 0x0200)
		return true;

	return false;
}