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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ eng_st; int /*<<< orphan*/  queue_th; scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENGINE_BUSY ; 
 scalar_t__ ENGINE_W_DEQUEUE ; 
 scalar_t__ FPGA_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SEC_ACCEL_INT_STATUS ; 
 int SEC_INT_ACCEL0_DONE ; 
 TYPE_1__* cpg ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

irqreturn_t FUNC4(int irq, void *priv)
{
	u32 val;

	val = FUNC1(cpg->reg + SEC_ACCEL_INT_STATUS);
	if (!(val & SEC_INT_ACCEL0_DONE))
		return IRQ_NONE;

	val &= ~SEC_INT_ACCEL0_DONE;
	FUNC3(val, cpg->reg + FPGA_INT_STATUS);
	FUNC3(val, cpg->reg + SEC_ACCEL_INT_STATUS);
	FUNC0(cpg->eng_st != ENGINE_BUSY);
	cpg->eng_st = ENGINE_W_DEQUEUE;
	FUNC2(cpg->queue_th);
	return IRQ_HANDLED;
}