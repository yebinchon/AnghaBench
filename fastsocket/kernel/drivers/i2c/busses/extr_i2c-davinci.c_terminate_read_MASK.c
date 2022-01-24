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
typedef  int /*<<< orphan*/  u16 ;
struct davinci_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  terminate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_DRR_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_MDR_NACK ; 
 int /*<<< orphan*/  DAVINCI_I2C_MDR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct davinci_i2c_dev *dev)
{
	u16 w = FUNC0(dev, DAVINCI_I2C_MDR_REG);
	w |= DAVINCI_I2C_MDR_NACK;
	FUNC1(dev, DAVINCI_I2C_MDR_REG, w);

	/* Throw away data */
	FUNC0(dev, DAVINCI_I2C_DRR_REG);
	if (!dev->terminate)
		FUNC2(dev->dev, "RDR IRQ while no data requested\n");
}