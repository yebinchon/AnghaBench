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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_fadt_gpe_device ; 
 int /*<<< orphan*/ * acpi_gbl_gpe_fadt_blocks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_install_fadt_gpes ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status FUNC6(void)
{
	acpi_status status;

	FUNC1(ev_install_fadt_gpes);

	/* Namespace must be locked */

	status = FUNC3(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		return (status);
	}

	/* FADT GPE Block 0 */

	(void)FUNC2(acpi_gbl_fadt_gpe_device,
					   acpi_gbl_gpe_fadt_blocks[0]);

	/* FADT GPE Block 1 */

	(void)FUNC2(acpi_gbl_fadt_gpe_device,
					   acpi_gbl_gpe_fadt_blocks[1]);

	(void)FUNC4(ACPI_MTX_NAMESPACE);
	FUNC5(AE_OK);
}