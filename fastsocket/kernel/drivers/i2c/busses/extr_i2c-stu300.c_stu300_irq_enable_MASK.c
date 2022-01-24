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
struct stu300_dev {scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ I2C_CR ; 
 int /*<<< orphan*/  I2C_CR_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct stu300_dev *dev)
{
	u32 val;
	val = FUNC0(dev->virtbase + I2C_CR);
	val |= I2C_CR_INTERRUPT_ENABLE;
	/* Twice paranoia (possible HW glitch) */
	FUNC1(val, dev->virtbase + I2C_CR);
	FUNC1(val, dev->virtbase + I2C_CR);
}