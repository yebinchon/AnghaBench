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
struct i2c_algo_iop3xx_data {int /*<<< orphan*/  waitq; int /*<<< orphan*/  SR_received; scalar_t__ ioaddr; int /*<<< orphan*/  SR_enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t 
FUNC3(int this_irq, void *dev_id) 
{
	struct i2c_algo_iop3xx_data *iop3xx_adap = dev_id;
	u32 sr = FUNC0(iop3xx_adap->ioaddr + SR_OFFSET);

	if ((sr &= iop3xx_adap->SR_enabled)) {
		FUNC1(sr, iop3xx_adap->ioaddr + SR_OFFSET);
		iop3xx_adap->SR_received |= sr;
		FUNC2(&iop3xx_adap->waitq);
	}
	return IRQ_HANDLED;
}