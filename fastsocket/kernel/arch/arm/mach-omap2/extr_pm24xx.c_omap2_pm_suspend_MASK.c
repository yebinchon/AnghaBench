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

/* Variables and functions */
 int OMAP24XX_EN_GPT1 ; 
 int /*<<< orphan*/  PM_WKEN ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	u32 wken_wkup, mir1;

	wken_wkup = FUNC4(WKUP_MOD, PM_WKEN);
	FUNC5(wken_wkup & ~OMAP24XX_EN_GPT1, WKUP_MOD, PM_WKEN);

	/* Mask GPT1 */
	mir1 = FUNC1(0x480fe0a4);
	FUNC3(1 << 5, 0x480fe0ac);

	FUNC2();
	FUNC0();

	FUNC3(mir1, 0x480fe0a4);
	FUNC5(wken_wkup, WKUP_MOD, PM_WKEN);

	return 0;
}