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
struct isci_host {TYPE_1__* smu_registers; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  interrupt_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IHOST_IRQ_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

void FUNC3(struct isci_host *ihost)
{
	FUNC0(IHOST_IRQ_ENABLED, &ihost->flags);
	FUNC2(0xffffffff, &ihost->smu_registers->interrupt_mask);
	FUNC1(&ihost->smu_registers->interrupt_mask); /* flush */
}