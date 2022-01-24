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
 scalar_t__ MV64x60_I2C_REG_CONTROL ; 
 scalar_t__ MV64x60_I2C_REG_DATA ; 
 scalar_t__ ctlr_base ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(int control, int status)
{
	FUNC2((u32 *)(ctlr_base + MV64x60_I2C_REG_CONTROL), control & 0xff);
	if (FUNC1(status) < 0)
		return -1;
	return FUNC0((u32 *)(ctlr_base + MV64x60_I2C_REG_DATA)) & 0xff;
}