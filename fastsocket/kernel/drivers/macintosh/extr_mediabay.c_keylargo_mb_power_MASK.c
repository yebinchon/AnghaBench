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
struct media_bay_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYLARGO_FCR1 ; 
 int /*<<< orphan*/  KEYLARGO_MBCR ; 
 int KL1_EIDE0_ENABLE ; 
 int KL1_EIDE0_RESET_N ; 
 int KL_MBCR_MB0_DEV_MASK ; 
 int KL_MBCR_MB0_DEV_POWER ; 
 int KL_MBCR_MB0_DEV_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct media_bay_info* bay, int on_off)
{
	if (on_off) {
		/* Power up device, assert it's reset line */
            	FUNC0(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_RESET);
            	FUNC0(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_POWER);
	} else {
		/* Disable all devices */
		FUNC0(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_MASK);
		FUNC0(bay, KEYLARGO_FCR1, KL1_EIDE0_ENABLE);
		/* Cut power from bay, release reset line */
		FUNC1(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_POWER);
		FUNC1(bay, KEYLARGO_MBCR, KL_MBCR_MB0_DEV_RESET);
		FUNC1(bay, KEYLARGO_FCR1, KL1_EIDE0_RESET_N);
	}
	FUNC0(bay, KEYLARGO_MBCR, 0x0000000F);
}