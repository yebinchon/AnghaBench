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

/* Variables and functions */
 int ENXIO ; 
 unsigned int VCH2CLK_AUXCLK ; 
 unsigned int VCH2CLK_MASK ; 
 unsigned int VCH2CLK_SYSCLK8 ; 
 unsigned int VCH3CLK_AUXCLK ; 
 unsigned int VCH3CLK_MASK ; 
 unsigned int VCH3CLK_SYSCLK8 ; 
 unsigned int VIDCH2CLK ; 
 unsigned int VIDCH3CLK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpld_client ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vpif_reg_lock ; 
 int /*<<< orphan*/  vpif_vidclkctl_reg ; 
 int /*<<< orphan*/  vpif_vsclkdis_reg ; 

__attribute__((used)) static int FUNC6(int mux_mode, int hd)
{
	unsigned long flags;
	unsigned int value;
	int val = 0;
	int err = 0;

	if (!vpif_vidclkctl_reg || !vpif_vsclkdis_reg || !cpld_client)
		return -ENXIO;

	/* disable the clock */
	FUNC4(&vpif_reg_lock, flags);
	value = FUNC0(vpif_vsclkdis_reg);
	value |= (VIDCH3CLK | VIDCH2CLK);
	FUNC1(value, vpif_vsclkdis_reg);
	FUNC5(&vpif_reg_lock, flags);

	val = FUNC2(cpld_client);
	if (val < 0)
		return val;

	if (mux_mode == 1)
		val &= ~0x40;
	else
		val |= 0x40;

	err = FUNC3(cpld_client, val);
	if (err)
		return err;

	value = FUNC0(vpif_vidclkctl_reg);
	value &= ~(VCH2CLK_MASK);
	value &= ~(VCH3CLK_MASK);

	if (hd >= 1)
		value |= (VCH2CLK_SYSCLK8 | VCH3CLK_SYSCLK8);
	else
		value |= (VCH2CLK_AUXCLK | VCH3CLK_AUXCLK);

	FUNC1(value, vpif_vidclkctl_reg);

	FUNC4(&vpif_reg_lock, flags);
	value = FUNC0(vpif_vsclkdis_reg);
	/* enable the clock */
	value &= ~(VIDCH3CLK | VIDCH2CLK);
	FUNC1(value, vpif_vsclkdis_reg);
	FUNC5(&vpif_reg_lock, flags);

	return 0;
}