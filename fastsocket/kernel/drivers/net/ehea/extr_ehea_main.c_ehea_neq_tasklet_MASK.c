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
typedef  int u64 ;
struct ehea_eqe {struct ehea_eqe* entry; } ;
struct ehea_adapter {TYPE_1__* neq; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_handle; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NELR_ADAPTER_MALFUNC ; 
 int /*<<< orphan*/  NELR_PORTSTATE_CHG ; 
 int /*<<< orphan*/  NELR_PORT_MALFUNC ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ehea_eqe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ehea_adapter*,struct ehea_eqe*) ; 
 struct ehea_eqe* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct ehea_adapter *adapter = (struct ehea_adapter *)data;
	struct ehea_eqe *eqe;
	u64 event_mask;

	eqe = FUNC4(adapter->neq);
	FUNC1("eqe=%p", eqe);

	while (eqe) {
		FUNC1("*eqe=%lx", eqe->entry);
		FUNC3(adapter, eqe->entry);
		eqe = FUNC4(adapter->neq);
		FUNC1("next eqe=%p", eqe);
	}

	event_mask = FUNC0(NELR_PORTSTATE_CHG, 1)
		   | FUNC0(NELR_ADAPTER_MALFUNC, 1)
		   | FUNC0(NELR_PORT_MALFUNC, 1);

	FUNC2(adapter->handle,
			    adapter->neq->fw_handle, event_mask);
}