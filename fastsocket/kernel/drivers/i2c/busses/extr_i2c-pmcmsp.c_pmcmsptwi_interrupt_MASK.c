#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pmcmsptwi_data {int /*<<< orphan*/  wait; int /*<<< orphan*/  last_result; scalar_t__ iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MSP_TWI_INT_STS_DONE ; 
 scalar_t__ MSP_TWI_INT_STS_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__ pmcmsptwi_adapter ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *ptr)
{
	struct pmcmsptwi_data *data = ptr;

	u32 reason = FUNC3(data->iobase +
					MSP_TWI_INT_STS_REG_OFFSET);
	FUNC4(reason, data->iobase + MSP_TWI_INT_STS_REG_OFFSET);

	FUNC1(&pmcmsptwi_adapter.dev, "Got interrupt 0x%08x\n", reason);
	if (!(reason & MSP_TWI_INT_STS_DONE))
		return IRQ_NONE;

	data->last_result = FUNC2(reason);
	FUNC0(&data->wait);

	return IRQ_HANDLED;
}