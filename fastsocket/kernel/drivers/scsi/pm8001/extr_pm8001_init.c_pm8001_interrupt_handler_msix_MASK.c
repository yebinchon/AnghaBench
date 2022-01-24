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
typedef  int /*<<< orphan*/  u8 ;
struct pm8001_hba_info {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  int_vector; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* isr ) (struct pm8001_hba_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* is_our_interupt ) (struct pm8001_hba_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 struct pm8001_hba_info* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *opaque)
{
	struct pm8001_hba_info *pm8001_ha = FUNC0(opaque);
	u8 outq = *(u8 *)opaque;
	irqreturn_t ret = IRQ_HANDLED;
	if (FUNC4(!pm8001_ha))
		return IRQ_NONE;
	if (!PM8001_CHIP_DISP->is_our_interupt(pm8001_ha))
		return IRQ_NONE;
	pm8001_ha->int_vector = outq;
#ifdef PM8001_USE_TASKLET
	tasklet_schedule(&pm8001_ha->tasklet);
#else
	ret = PM8001_CHIP_DISP->isr(pm8001_ha, outq);
#endif
	return ret;
}