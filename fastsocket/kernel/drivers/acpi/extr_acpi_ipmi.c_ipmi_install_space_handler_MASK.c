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
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct acpi_ipmi_device {int /*<<< orphan*/  flags; struct pnp_dev* pnp_dev; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_IPMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPMI_FLAGS_HANDLER_INSTALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_ipmi_device*) ; 
 int /*<<< orphan*/  acpi_ipmi_space_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct acpi_ipmi_device *ipmi)
{
	acpi_status status;

	if (FUNC4(IPMI_FLAGS_HANDLER_INSTALL, &ipmi->flags))
		return 0;

	status = FUNC1(ipmi->handle,
						    ACPI_ADR_SPACE_IPMI,
						    &acpi_ipmi_space_handler,
						    NULL, ipmi);
	if (FUNC0(status)) {
		struct pnp_dev *pnp_dev = ipmi->pnp_dev;
		FUNC2(&pnp_dev->dev, "Can't register IPMI opregion space "
			"handle\n");
		return -EINVAL;
	}
	FUNC3(IPMI_FLAGS_HANDLER_INSTALL, &ipmi->flags);
	return 0;
}