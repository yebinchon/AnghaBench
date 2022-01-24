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
typedef  int /*<<< orphan*/  u8 ;
struct stk_camera {int dummy; } ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  STK_IIC_OP ; 
 int /*<<< orphan*/  STK_IIC_OP_TX ; 
 int /*<<< orphan*/  STK_IIC_STAT ; 
 int STK_IIC_STAT_TX_OK ; 
 int /*<<< orphan*/  STK_IIC_TX_INDEX ; 
 int /*<<< orphan*/  STK_IIC_TX_VALUE ; 
 scalar_t__ FUNC1 (struct stk_camera*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct stk_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct stk_camera *dev, u8 reg, u8 val)
{
	int i = 0;
	int tmpval = 0;

	if (FUNC2(dev, STK_IIC_TX_INDEX, reg))
		return 1;
	if (FUNC2(dev, STK_IIC_TX_VALUE, val))
		return 1;
	if (FUNC2(dev, STK_IIC_OP, STK_IIC_OP_TX))
		return 1;
	do {
		if (FUNC1(dev, STK_IIC_STAT, &tmpval))
			return 1;
		i++;
	} while (tmpval == 0 && i < MAX_RETRIES);
	if (tmpval != STK_IIC_STAT_TX_OK) {
		if (tmpval)
			FUNC0("stk_sensor_outb failed, status=0x%02x\n",
				tmpval);
		return 1;
	} else
		return 0;
}