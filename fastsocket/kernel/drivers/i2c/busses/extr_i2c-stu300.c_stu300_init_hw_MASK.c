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
struct stu300_dev {scalar_t__ virtbase; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ I2C_CR ; 
 int I2C_CR_PERIPHERAL_ENABLE ; 
 scalar_t__ I2C_OAR1 ; 
 scalar_t__ I2C_SR1 ; 
 scalar_t__ I2C_SR2 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct stu300_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct stu300_dev *dev)
{
	u32 dummy;
	unsigned long clkrate;
	int ret;

	/* Disable controller */
	FUNC3(0x00, dev->virtbase + I2C_CR);
	/*
	 * Set own address to some default value (0x00).
	 * We do not support slave mode anyway.
	 */
	FUNC3(0x00, dev->virtbase + I2C_OAR1);
	/*
	 * The I2C controller only operates properly in 26 MHz but we
	 * program this driver as if we didn't know. This will also set the two
	 * high bits of the own address to zero as well.
	 * There is no known hardware issue with running in 13 MHz
	 * However, speeds over 200 kHz are not used.
	 */
	clkrate = FUNC0(dev->clk);
	ret = FUNC2(dev, clkrate);

	if (ret)
		return ret;
	/*
	 * Enable block, do it TWICE (hardware glitch)
	 * Setting bit 7 can enable DDC mode. (Not used currently.)
	 */
	FUNC3(I2C_CR_PERIPHERAL_ENABLE,
				  dev->virtbase + I2C_CR);
	FUNC3(I2C_CR_PERIPHERAL_ENABLE,
				  dev->virtbase + I2C_CR);
	/* Make a dummy read of the status register SR1 & SR2 */
	dummy = FUNC1(dev->virtbase + I2C_SR2);
	dummy = FUNC1(dev->virtbase + I2C_SR1);

	return 0;
}