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
struct acpi_ipmi_device {int /*<<< orphan*/  head; int /*<<< orphan*/  tx_msg_list; int /*<<< orphan*/  tx_msg_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipmi_devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ driver_data ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ipmi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct acpi_ipmi_device *ipmi_device)
{

	FUNC0(&ipmi_device->head);

	FUNC3(&ipmi_device->tx_msg_lock);
	FUNC0(&ipmi_device->tx_msg_list);
	FUNC1(ipmi_device);

	FUNC2(&ipmi_device->head, &driver_data.ipmi_devices);
}