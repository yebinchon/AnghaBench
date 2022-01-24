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
typedef  size_t u32 ;
struct acpi_bit_register_info {int dummy; } ;

/* Variables and functions */
 size_t ACPI_BITREG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  AE_INFO ; 
 struct acpi_bit_register_info* acpi_gbl_bit_register_info ; 

struct acpi_bit_register_info *FUNC2(u32 register_id)
{
	FUNC1();

	if (register_id > ACPI_BITREG_MAX) {
		FUNC0((AE_INFO, "Invalid BitRegister ID: %X",
			    register_id));
		return (NULL);
	}

	return (&acpi_gbl_bit_register_info[register_id]);
}