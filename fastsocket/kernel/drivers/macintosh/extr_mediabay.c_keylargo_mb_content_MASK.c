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
struct media_bay_info {int cached_gpio; } ;

/* Variables and functions */
 int KEYLARGO_GPIO_INPUT_DATA ; 
 int /*<<< orphan*/  KEYLARGO_MBCR ; 
 int /*<<< orphan*/  KL_GPIO_MEDIABAY_IRQ ; 
 int /*<<< orphan*/  KL_MBCR_MB0_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct media_bay_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct media_bay_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct media_bay_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct media_bay_info*,int /*<<< orphan*/ ) ; 
 int MB_NO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static u8
FUNC5(struct media_bay_info *bay)
{
	int new_gpio;

	new_gpio = FUNC3(bay, KL_GPIO_MEDIABAY_IRQ) & KEYLARGO_GPIO_INPUT_DATA;
	if (new_gpio) {
		bay->cached_gpio = new_gpio;
		return MB_NO;
	} else if (bay->cached_gpio != new_gpio) {
		FUNC1(bay, KEYLARGO_MBCR, KL_MBCR_MB0_ENABLE);
		(void)FUNC2(bay, KEYLARGO_MBCR);
		FUNC4(5);
		FUNC0(bay, KEYLARGO_MBCR, 0x0000000F);
		(void)FUNC2(bay, KEYLARGO_MBCR);
		FUNC4(5);
		bay->cached_gpio = new_gpio;
	}
	return (FUNC2(bay, KEYLARGO_MBCR) >> 4) & 7;
}