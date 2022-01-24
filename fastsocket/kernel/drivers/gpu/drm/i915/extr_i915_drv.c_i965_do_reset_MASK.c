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
typedef  int u8 ;
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int GRDOM_MEDIA ; 
 int GRDOM_RENDER ; 
 int GRDOM_RESET_ENABLE ; 
 int /*<<< orphan*/  I965_GDRST ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev)
{
	int ret;
	u8 gdrst;

	/*
	 * Set the domains we want to reset (GRDOM/bits 2 and 3) as
	 * well as the reset bit (GR/bit 0).  Setting the GR bit
	 * triggers the reset; when done, the hardware will clear it.
	 */
	FUNC1(dev->pdev, I965_GDRST, &gdrst);
	FUNC2(dev->pdev, I965_GDRST,
			      gdrst | GRDOM_RENDER |
			      GRDOM_RESET_ENABLE);
	ret =  FUNC3(FUNC0(dev), 500);
	if (ret)
		return ret;

	/* We can't reset render&media without also resetting display ... */
	FUNC1(dev->pdev, I965_GDRST, &gdrst);
	FUNC2(dev->pdev, I965_GDRST,
			      gdrst | GRDOM_MEDIA |
			      GRDOM_RESET_ENABLE);

	return FUNC3(FUNC0(dev), 500);
}