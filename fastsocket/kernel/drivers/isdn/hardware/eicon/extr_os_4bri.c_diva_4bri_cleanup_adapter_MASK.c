#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ ** addr; scalar_t__* bar; } ;
struct TYPE_14__ {TYPE_3__ pci; } ;
struct TYPE_11__ {scalar_t__ registered; int /*<<< orphan*/  irq_nr; } ;
struct TYPE_12__ {TYPE_1__ irq_info; scalar_t__ Initialized; } ;
struct TYPE_15__ {int /*<<< orphan*/ * slave_list; TYPE_4__ resources; int /*<<< orphan*/ * port_name; int /*<<< orphan*/  CardOrdinal; TYPE_2__ xdi_adapter; } ;
typedef  TYPE_5__ diva_os_xdi_adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/ * _4bri_bar_length ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * _4bri_v2_bar_length ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(diva_os_xdi_adapter_t * a)
{
	int bar;

	/*
	   Stop adapter if running
	 */
	if (a->xdi_adapter.Initialized) {
		FUNC2(a);
	}

	/*
	   Remove IRQ handler
	 */
	if (a->xdi_adapter.irq_info.registered) {
		FUNC5(a, a->xdi_adapter.irq_info.irq_nr);
	}
	a->xdi_adapter.irq_info.registered = 0;

	/*
	   Free DPC's and spin locks on all adapters
	 */
	FUNC1(a);

	/*
	   Unmap all BARS
	 */
	for (bar = 0; bar < 4; bar++) {
		if (bar != 1) {
			if (a->resources.pci.bar[bar]
			    && a->resources.pci.addr[bar]) {
				FUNC6(a->resources.pci.addr[bar]);
				a->resources.pci.bar[bar] = 0;
				a->resources.pci.addr[bar] = NULL;
			}
		}
	}

	/*
	   Unregister I/O
	 */
	if (a->resources.pci.bar[1] && a->resources.pci.addr[1]) {
		FUNC4(a, 0, a->resources.pci.bar[1],
					 FUNC0(a->
							     CardOrdinal) ?
					 _4bri_v2_bar_length[1] :
					 _4bri_bar_length[1],
					 &a->port_name[0], 1);
		a->resources.pci.bar[1] = 0;
		a->resources.pci.addr[1] = NULL;
	}

	if (a->slave_list) {
		FUNC3(0, a->slave_list);
		a->slave_list = NULL;
	}

	return (0);
}