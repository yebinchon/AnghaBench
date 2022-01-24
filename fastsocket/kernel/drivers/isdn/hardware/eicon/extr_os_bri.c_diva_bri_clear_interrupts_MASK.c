#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  isr_soft_isr; int /*<<< orphan*/  req_soft_isr; int /*<<< orphan*/  a; int /*<<< orphan*/  (* tst_irq ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clr_irq ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* disIrq ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_2__ xdi_adapter; } ;
typedef  TYPE_1__ diva_os_xdi_adapter_t ;
typedef  TYPE_2__* PISDN_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(diva_os_xdi_adapter_t * a)
{
	PISDN_ADAPTER IoAdapter = &a->xdi_adapter;

	/*
	   clear any pending interrupt
	 */
	IoAdapter->disIrq(IoAdapter);

	IoAdapter->tst_irq(&IoAdapter->a);
	IoAdapter->clr_irq(&IoAdapter->a);
	IoAdapter->tst_irq(&IoAdapter->a);

	/*
	   kill pending dpcs
	 */
	FUNC0(&IoAdapter->req_soft_isr);
	FUNC0(&IoAdapter->isr_soft_isr);
}