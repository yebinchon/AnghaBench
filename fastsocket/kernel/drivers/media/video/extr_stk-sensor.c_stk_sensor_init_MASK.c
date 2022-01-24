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
struct stk_camera {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM7_RESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  REG_COM7 ; 
 int /*<<< orphan*/  REG_MIDH ; 
 int /*<<< orphan*/  REG_MIDL ; 
 int /*<<< orphan*/  REG_PID ; 
 int /*<<< orphan*/  REG_VER ; 
 int /*<<< orphan*/  SENSOR_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STK_IIC_ADDR ; 
 int /*<<< orphan*/  STK_IIC_ENABLE ; 
 int /*<<< orphan*/  STK_IIC_ENABLE_YES ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ov_initvals ; 
 scalar_t__ FUNC3 (struct stk_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct stk_camera*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct stk_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stk_camera*,int /*<<< orphan*/ ) ; 

int FUNC7(struct stk_camera *dev)
{
	u8 idl = 0;
	u8 idh = 0;

	if (FUNC3(dev, STK_IIC_ENABLE, STK_IIC_ENABLE_YES)
		|| FUNC3(dev, STK_IIC_ADDR, SENSOR_ADDRESS)
		|| FUNC5(dev, REG_COM7, COM7_RESET)) {
		FUNC0("Sensor resetting failed\n");
		return -ENODEV;
	}
	FUNC2(10);
	/* Read the manufacturer ID: ov = 0x7FA2 */
	if (FUNC4(dev, REG_MIDH, &idh)
	    || FUNC4(dev, REG_MIDL, &idl)) {
		FUNC0("Strange error reading sensor ID\n");
		return -ENODEV;
	}
	if (idh != 0x7f || idl != 0xa2) {
		FUNC0("Huh? you don't have a sensor from ovt\n");
		return -ENODEV;
	}
	if (FUNC4(dev, REG_PID, &idh)
	    || FUNC4(dev, REG_VER, &idl)) {
		FUNC0("Could not read sensor model\n");
		return -ENODEV;
	}
	FUNC6(dev, ov_initvals);
	FUNC2(10);
	FUNC1("OmniVision sensor detected, id %02X%02X"
		" at address %x\n", idh, idl, SENSOR_ADDRESS);
	return 0;
}