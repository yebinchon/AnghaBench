#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * object; } ;
struct TYPE_12__ {scalar_t__ registered; int /*<<< orphan*/  irq_nr; } ;
struct TYPE_15__ {int /*<<< orphan*/ * e_tbl; int /*<<< orphan*/  data_spin_lock; int /*<<< orphan*/  isr_spin_lock; TYPE_6__ isr_soft_isr; TYPE_6__ req_soft_isr; TYPE_1__ irq_info; scalar_t__ Initialized; } ;
struct TYPE_13__ {scalar_t__* bar; int /*<<< orphan*/ ** addr; int /*<<< orphan*/ * length; } ;
struct TYPE_14__ {TYPE_2__ pci; } ;
struct TYPE_16__ {TYPE_4__ xdi_adapter; TYPE_3__ resources; int /*<<< orphan*/ * port_name; } ;
typedef  TYPE_5__ diva_os_xdi_adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(diva_os_xdi_adapter_t * a)
{
	int i;

	if (a->xdi_adapter.Initialized) {
		FUNC0(a);
	}

	/*
	   Remove ISR Handler
	 */
	if (a->xdi_adapter.irq_info.registered) {
		FUNC5(a, a->xdi_adapter.irq_info.irq_nr);
	}
	a->xdi_adapter.irq_info.registered = 0;

	if (a->resources.pci.addr[0] && a->resources.pci.bar[0]) {
		FUNC7(a->resources.pci.addr[0]);
		a->resources.pci.addr[0] = NULL;
		a->resources.pci.bar[0] = 0;
	}

	for (i = 1; i < 3; i++) {
		if (a->resources.pci.addr[i] && a->resources.pci.bar[i]) {
			FUNC4(a, 0,
						 a->resources.pci.bar[i],
						 a->resources.pci.
						 length[i],
						 &a->port_name[0], i);
			a->resources.pci.addr[i] = NULL;
			a->resources.pci.bar[i] = 0;
		}
	}

	/*
	   Free OS objects
	 */
	FUNC1(&a->xdi_adapter.req_soft_isr);
	FUNC1(&a->xdi_adapter.isr_soft_isr);

	FUNC6(&a->xdi_adapter.req_soft_isr);
	a->xdi_adapter.isr_soft_isr.object = NULL;

	FUNC2(&a->xdi_adapter.isr_spin_lock, "rm");
	FUNC2(&a->xdi_adapter.data_spin_lock, "rm");

	/*
	   Free memory
	 */
	if (a->xdi_adapter.e_tbl) {
		FUNC3(0, a->xdi_adapter.e_tbl);
		a->xdi_adapter.e_tbl = NULL;
	}

	return (0);
}