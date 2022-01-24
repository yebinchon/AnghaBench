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
struct mpc_i2c {int interrupt; int /*<<< orphan*/  queue; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CSR_MIF ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MPC_I2C_SR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct mpc_i2c *i2c = dev_id;
	if (FUNC0(i2c->base + MPC_I2C_SR) & CSR_MIF) {
		/* Read again to allow register to stabilise */
		i2c->interrupt = FUNC0(i2c->base + MPC_I2C_SR);
		FUNC2(0, i2c->base + MPC_I2C_SR);
		FUNC1(&i2c->queue);
	}
	return IRQ_HANDLED;
}