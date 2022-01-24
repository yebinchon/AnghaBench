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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL2 ; 
 int /*<<< orphan*/  RT3290 ; 
 int /*<<< orphan*/  WLAN_FUN_CTRL ; 
 int /*<<< orphan*/  WLAN_GPIO_IN_BIT0 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

int FUNC3(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	if (FUNC2(rt2x00dev, RT3290)) {
		FUNC0(rt2x00dev, WLAN_FUN_CTRL, &reg);
		return FUNC1(reg, WLAN_GPIO_IN_BIT0);
	} else {
		FUNC0(rt2x00dev, GPIO_CTRL, &reg);
		return FUNC1(reg, GPIO_CTRL_VAL2);
	}
}