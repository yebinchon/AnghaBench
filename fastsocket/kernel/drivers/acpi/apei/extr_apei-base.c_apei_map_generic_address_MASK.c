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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_generic_address {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_generic_address*) ; 
 int FUNC1 (struct acpi_generic_address*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct acpi_generic_address *reg)
{
	int rc;
	u32 access_bit_width;
	u64 address;

	rc = FUNC1(reg, &address, &access_bit_width);
	if (rc)
		return rc;
	return FUNC0(reg);
}