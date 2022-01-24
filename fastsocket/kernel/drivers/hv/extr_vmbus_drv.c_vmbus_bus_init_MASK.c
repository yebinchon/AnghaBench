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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hv_acpi_dev ; 
 int /*<<< orphan*/  hv_bus ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  hv_synic_init ; 
 int /*<<< orphan*/  msg_dpc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  vmbus_flow_handler ; 
 int /*<<< orphan*/  vmbus_isr ; 
 int /*<<< orphan*/  vmbus_on_msg_dpc ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(int irq)
{
	int ret;

	/* Hypervisor initialization...setup hypercall page..etc */
	ret = FUNC4();
	if (ret != 0) {
		FUNC9("Unable to initialize the hypervisor - 0x%x\n", ret);
		return ret;
	}

	FUNC12(&msg_dpc, vmbus_on_msg_dpc, 0);

	ret = FUNC0(&hv_bus);
	if (ret)
		goto err_cleanup;

	ret = FUNC10(irq, vmbus_isr, 0, driver_name, hv_acpi_dev);

	if (ret != 0) {
		FUNC9("Unable to request IRQ %d\n",
			   irq);
		goto err_unregister;
	}

	/*
	 * Vmbus interrupts can be handled concurrently on
	 * different CPUs. Establish an appropriate interrupt flow
	 * handler that can support this model.
	 */
	FUNC11(irq, vmbus_flow_handler);

	/*
	 * Register our interrupt handler.
	 */
	FUNC5(irq, vmbus_isr);

	ret = FUNC6();
	if (ret)
		goto err_alloc;
	/*
	 * Initialize the per-cpu interrupt state and
	 * connect to the host.
	 */
	FUNC8(hv_synic_init, NULL, 1);
	ret = FUNC13();
	if (ret)
		goto err_alloc;

	FUNC14();

	return 0;

err_alloc:
	FUNC7();
	FUNC2(irq, hv_acpi_dev);

err_unregister:
	FUNC1(&hv_bus);

err_cleanup:
	FUNC3();

	return ret;
}