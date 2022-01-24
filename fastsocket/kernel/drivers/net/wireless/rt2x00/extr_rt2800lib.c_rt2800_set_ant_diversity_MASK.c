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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
typedef  enum antenna { ____Placeholder_antenna } antenna ;

/* Variables and functions */
 int ANTENNA_A ; 
 int /*<<< orphan*/  E2PROM_CSR ; 
 int /*<<< orphan*/  E2PROM_CSR_DATA_CLOCK ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR3 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL3 ; 
 int /*<<< orphan*/  MCU_ANT_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				     enum antenna ant)
{
	u32 reg;
	u8 eesk_pin = (ant == ANTENNA_A) ? 1 : 0;
	u8 gpio_bit3 = (ant == ANTENNA_A) ? 0 : 1;

	if (FUNC3(rt2x00dev)) {
		FUNC1(rt2x00dev, E2PROM_CSR, &reg);
		FUNC5(&reg, E2PROM_CSR_DATA_CLOCK, eesk_pin);
		FUNC2(rt2x00dev, E2PROM_CSR, reg);
	} else if (FUNC4(rt2x00dev))
		FUNC0(rt2x00dev, MCU_ANT_SELECT, 0xff,
				   eesk_pin, 0);

	FUNC1(rt2x00dev, GPIO_CTRL, &reg);
	FUNC5(&reg, GPIO_CTRL_DIR3, 0);
	FUNC5(&reg, GPIO_CTRL_VAL3, gpio_bit3);
	FUNC2(rt2x00dev, GPIO_CTRL, reg);
}