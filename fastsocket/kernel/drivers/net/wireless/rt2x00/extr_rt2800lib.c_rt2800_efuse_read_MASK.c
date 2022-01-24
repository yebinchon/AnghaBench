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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; int /*<<< orphan*/ * eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_CTRL ; 
 int /*<<< orphan*/  EFUSE_CTRL_3290 ; 
 int /*<<< orphan*/  EFUSE_CTRL_ADDRESS_IN ; 
 int /*<<< orphan*/  EFUSE_CTRL_KICK ; 
 int /*<<< orphan*/  EFUSE_CTRL_MODE ; 
 int /*<<< orphan*/  EFUSE_DATA0 ; 
 int /*<<< orphan*/  EFUSE_DATA0_3290 ; 
 int /*<<< orphan*/  EFUSE_DATA1 ; 
 int /*<<< orphan*/  EFUSE_DATA1_3290 ; 
 int /*<<< orphan*/  EFUSE_DATA2 ; 
 int /*<<< orphan*/  EFUSE_DATA2_3290 ; 
 int /*<<< orphan*/  EFUSE_DATA3 ; 
 int /*<<< orphan*/  EFUSE_DATA3_3290 ; 
 int /*<<< orphan*/  RT3290 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rt2x00_dev *rt2x00dev, unsigned int i)
{
	u32 reg;
	u16 efuse_ctrl_reg;
	u16 efuse_data0_reg;
	u16 efuse_data1_reg;
	u16 efuse_data2_reg;
	u16 efuse_data3_reg;

	if (FUNC6(rt2x00dev, RT3290)) {
		efuse_ctrl_reg = EFUSE_CTRL_3290;
		efuse_data0_reg = EFUSE_DATA0_3290;
		efuse_data1_reg = EFUSE_DATA1_3290;
		efuse_data2_reg = EFUSE_DATA2_3290;
		efuse_data3_reg = EFUSE_DATA3_3290;
	} else {
		efuse_ctrl_reg = EFUSE_CTRL;
		efuse_data0_reg = EFUSE_DATA0;
		efuse_data1_reg = EFUSE_DATA1;
		efuse_data2_reg = EFUSE_DATA2;
		efuse_data3_reg = EFUSE_DATA3;
	}
	FUNC1(&rt2x00dev->csr_mutex);

	FUNC4(rt2x00dev, efuse_ctrl_reg, &reg);
	FUNC7(&reg, EFUSE_CTRL_ADDRESS_IN, i);
	FUNC7(&reg, EFUSE_CTRL_MODE, 0);
	FUNC7(&reg, EFUSE_CTRL_KICK, 1);
	FUNC5(rt2x00dev, efuse_ctrl_reg, reg);

	/* Wait until the EEPROM has been loaded */
	FUNC3(rt2x00dev, efuse_ctrl_reg, EFUSE_CTRL_KICK, &reg);
	/* Apparently the data is read from end to start */
	FUNC4(rt2x00dev, efuse_data3_reg, &reg);
	/* The returned value is in CPU order, but eeprom is le */
	*(u32 *)&rt2x00dev->eeprom[i] = FUNC0(reg);
	FUNC4(rt2x00dev, efuse_data2_reg, &reg);
	*(u32 *)&rt2x00dev->eeprom[i + 2] = FUNC0(reg);
	FUNC4(rt2x00dev, efuse_data1_reg, &reg);
	*(u32 *)&rt2x00dev->eeprom[i + 4] = FUNC0(reg);
	FUNC4(rt2x00dev, efuse_data0_reg, &reg);
	*(u32 *)&rt2x00dev->eeprom[i + 6] = FUNC0(reg);

	FUNC2(&rt2x00dev->csr_mutex);
}