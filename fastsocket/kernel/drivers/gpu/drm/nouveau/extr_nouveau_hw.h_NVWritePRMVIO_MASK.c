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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_40 ; 
 scalar_t__ NV_PRMVIO_SIZE ; 
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct drm_device *dev,
					int head, uint32_t reg, uint8_t value)
{
	struct nouveau_device *device = FUNC0(dev);
	struct nouveau_drm *drm = FUNC1(dev);

	/* Only NV4x have two pvio ranges; other twoHeads cards MUST call
	 * NVSetOwner for the relevant head to be programmed */
	if (head && FUNC2(drm->device)->card_type == NV_40)
		reg += NV_PRMVIO_SIZE;

	FUNC3(device, reg, value);
}