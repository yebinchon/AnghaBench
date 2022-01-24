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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int,int,int,int*) ; 
 int FUNC1 (struct drm_device*,int) ; 

__attribute__((used)) static u32
FUNC2(struct drm_device *dev, int clk, u32 freq, u32 *dsrc, u32 *ddiv)
{
	u32 sclk;

	/* use one of the fixed frequencies if possible */
	*ddiv = 0x00000000;
	switch (freq) {
	case  27000:
	case 108000:
		*dsrc = 0x00000000;
		if (freq == 108000)
			*dsrc |= 0x00030000;
		return freq;
	case 100000:
		*dsrc = 0x00000002;
		return freq;
	default:
		*dsrc = 0x00000003;
		break;
	}

	/* otherwise, calculate the closest divider */
	sclk = FUNC1(dev, clk);
	if (clk < 7)
		sclk = FUNC0(dev, clk, sclk, freq, ddiv);
	return sclk;
}