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
typedef  scalar_t__ u8 ;
struct acpi_gpe_event_info {int gpe_number; TYPE_1__* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int base_gpe_number; int /*<<< orphan*/  status_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

acpi_status FUNC2(struct acpi_gpe_event_info * gpe_event_info)
{
	acpi_status status;
	u8 register_bit;

	FUNC0();

	register_bit = (u8)(1 <<
			    (gpe_event_info->gpe_number -
			     gpe_event_info->register_info->base_gpe_number));

	/*
	 * Write a one to the appropriate bit in the status register to
	 * clear this GPE.
	 */
	status = FUNC1(register_bit,
			       &gpe_event_info->register_info->status_address);

	return (status);
}