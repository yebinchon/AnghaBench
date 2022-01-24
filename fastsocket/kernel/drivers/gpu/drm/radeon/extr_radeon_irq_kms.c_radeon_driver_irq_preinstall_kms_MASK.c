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
struct TYPE_2__ {int* hpd; int* crtc_vblank_int; int* afmt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pflip; int /*<<< orphan*/ * ring_int; } ;
struct radeon_device {TYPE_1__ irq; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 unsigned int RADEON_MAX_CRTCS ; 
 unsigned int RADEON_MAX_HPD_PINS ; 
 unsigned int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;
	unsigned long irqflags;
	unsigned i;

	FUNC3(&rdev->irq.lock, irqflags);
	/* Disable *all* interrupts */
	for (i = 0; i < RADEON_NUM_RINGS; i++)
		FUNC0(&rdev->irq.ring_int[i], 0);
	for (i = 0; i < RADEON_MAX_HPD_PINS; i++)
		rdev->irq.hpd[i] = false;
	for (i = 0; i < RADEON_MAX_CRTCS; i++) {
		rdev->irq.crtc_vblank_int[i] = false;
		FUNC0(&rdev->irq.pflip[i], 0);
		rdev->irq.afmt[i] = false;
	}
	FUNC2(rdev);
	FUNC4(&rdev->irq.lock, irqflags);
	/* Clear bits */
	FUNC1(rdev);
}