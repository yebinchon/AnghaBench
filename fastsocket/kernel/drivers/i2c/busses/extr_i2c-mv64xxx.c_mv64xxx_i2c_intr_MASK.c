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
struct mv64xxx_i2c_data {int /*<<< orphan*/  lock; scalar_t__ reg_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MV64XXX_I2C_REG_CONTROL ; 
 int MV64XXX_I2C_REG_CONTROL_IFLG ; 
 scalar_t__ MV64XXX_I2C_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv64xxx_i2c_data*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int irq, void *dev_id)
{
	struct mv64xxx_i2c_data	*drv_data = dev_id;
	unsigned long	flags;
	u32		status;
	irqreturn_t	rc = IRQ_NONE;

	FUNC3(&drv_data->lock, flags);
	while (FUNC2(drv_data->reg_base + MV64XXX_I2C_REG_CONTROL) &
						MV64XXX_I2C_REG_CONTROL_IFLG) {
		status = FUNC2(drv_data->reg_base + MV64XXX_I2C_REG_STATUS);
		FUNC1(drv_data, status);
		FUNC0(drv_data);
		rc = IRQ_HANDLED;
	}
	FUNC4(&drv_data->lock, flags);

	return rc;
}