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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ev_pci_bar_region_setup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC2(acpi_handle handle,
			     u32 function,
			     void *handler_context, void **region_context)
{
	FUNC0(ev_pci_bar_region_setup);

	FUNC1(AE_OK);
}