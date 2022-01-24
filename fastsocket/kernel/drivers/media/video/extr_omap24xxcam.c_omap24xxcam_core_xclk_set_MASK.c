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
typedef  int u32 ;
struct omap24xxcam_device {scalar_t__ mmio_base; } ;

/* Variables and functions */
 int CAM_MCLK ; 
 int /*<<< orphan*/  CC_CTRL_XCLK ; 
 int CC_CTRL_XCLK_DIV_BYPASS ; 
 int CC_CTRL_XCLK_DIV_STABLE_LOW ; 
 scalar_t__ CC_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(const struct omap24xxcam_device *cam,
				      u32 xclk)
{
	if (xclk) {
		u32 divisor = CAM_MCLK / xclk;

		if (divisor == 1)
			FUNC0(cam->mmio_base + CC_REG_OFFSET,
					    CC_CTRL_XCLK,
					    CC_CTRL_XCLK_DIV_BYPASS);
		else
			FUNC0(cam->mmio_base + CC_REG_OFFSET,
					    CC_CTRL_XCLK, divisor);
	} else
		FUNC0(cam->mmio_base + CC_REG_OFFSET,
				    CC_CTRL_XCLK, CC_CTRL_XCLK_DIV_STABLE_LOW);
}