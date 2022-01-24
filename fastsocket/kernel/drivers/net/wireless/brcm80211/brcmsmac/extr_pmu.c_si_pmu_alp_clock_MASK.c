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
struct si_pub {int dummy; } ;

/* Variables and functions */
 int ALP_CLOCK ; 
#define  BCM4313_CHIP_ID 130 
#define  BCM43224_CHIP_ID 129 
#define  BCM43225_CHIP_ID 128 
 int CC_CAP_PMU ; 
 int FUNC0 (struct si_pub*) ; 
 int FUNC1 (struct si_pub*) ; 

u32 FUNC2(struct si_pub *sih)
{
	u32 clock = ALP_CLOCK;

	/* bail out with default */
	if (!(FUNC0(sih) & CC_CAP_PMU))
		return clock;

	switch (FUNC1(sih)) {
	case BCM43224_CHIP_ID:
	case BCM43225_CHIP_ID:
	case BCM4313_CHIP_ID:
		/* always 20Mhz */
		clock = 20000 * 1000;
		break;
	default:
		break;
	}

	return clock;
}