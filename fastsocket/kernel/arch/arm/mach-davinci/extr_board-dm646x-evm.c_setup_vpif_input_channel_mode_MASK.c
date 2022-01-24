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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  VIDCH1CLK ; 
 int VPIF_INPUT_ONE_CHANNEL ; 
 int VPIF_INPUT_TWO_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpld_client ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vpif_reg_lock ; 
 int /*<<< orphan*/  vpif_vsclkdis_reg ; 

__attribute__((used)) static int FUNC6(int mux_mode)
{
	unsigned long flags;
	int err = 0;
	int val;
	u32 value;

	if (!vpif_vsclkdis_reg || !cpld_client)
		return -ENXIO;

	val = FUNC2(cpld_client);
	if (val < 0)
		return val;

	FUNC4(&vpif_reg_lock, flags);
	value = FUNC0(vpif_vsclkdis_reg);
	if (mux_mode) {
		val &= VPIF_INPUT_TWO_CHANNEL;
		value |= VIDCH1CLK;
	} else {
		val |= VPIF_INPUT_ONE_CHANNEL;
		value &= ~VIDCH1CLK;
	}
	FUNC1(value, vpif_vsclkdis_reg);
	FUNC5(&vpif_reg_lock, flags);

	err = FUNC3(cpld_client, val);
	if (err)
		return err;

	return 0;
}