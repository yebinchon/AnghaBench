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
struct acpi_ipmi_device {int /*<<< orphan*/  head; int /*<<< orphan*/  tx_msg_list; int /*<<< orphan*/ * user_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ipmi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ipmi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct acpi_ipmi_device *ipmi_device)
{
	/*
	 * If the IPMI user interface is created, it should be
	 * destroyed.
	 */
	if (ipmi_device->user_interface) {
		FUNC0(ipmi_device->user_interface);
		ipmi_device->user_interface = NULL;
	}
	/* flush the Tx_msg list */
	if (!FUNC4(&ipmi_device->tx_msg_list))
		FUNC1(ipmi_device);

	FUNC3(&ipmi_device->head);
	FUNC2(ipmi_device);
}