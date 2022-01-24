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
struct drm_device {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  NV_VIO_SR_CLOCK_INDEX ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 

void
FUNC5(struct drm_device *dev, int head, bool blank)
{
	unsigned char seq1;

	if (FUNC4(dev))
		FUNC1(dev, head);

	seq1 = FUNC0(dev, head, NV_VIO_SR_CLOCK_INDEX);

	FUNC2(dev, head, true);
	if (blank)
		FUNC3(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 | 0x20);
	else
		FUNC3(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 & ~0x20);
	FUNC2(dev, head, false);
}