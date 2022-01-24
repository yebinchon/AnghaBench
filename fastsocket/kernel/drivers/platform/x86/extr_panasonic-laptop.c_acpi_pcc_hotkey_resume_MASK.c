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
struct pcc_acpi {int /*<<< orphan*/  sticky_mode; } ;
struct acpi_device {int dummy; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AE_OK ; 
 int EINVAL ; 
 int /*<<< orphan*/  SINF_STICKY_KEY ; 
 struct pcc_acpi* FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 (struct pcc_acpi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct pcc_acpi *pcc = FUNC1(device);
	acpi_status status = AE_OK;

	if (device == NULL || pcc == NULL)
		return -EINVAL;

	FUNC0((ACPI_DB_ERROR, "Sticky mode restore: %d\n",
			  pcc->sticky_mode));

	status = FUNC2(pcc, SINF_STICKY_KEY, pcc->sticky_mode);

	return status == AE_OK ? 0 : -EINVAL;
}