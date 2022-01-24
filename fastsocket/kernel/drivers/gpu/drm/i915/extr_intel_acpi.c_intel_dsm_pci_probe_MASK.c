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
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;
struct TYPE_2__ {scalar_t__ dhandle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  INTEL_DSM_FN_SUPPORTED_FUNCTIONS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,scalar_t__*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ intel_dsm_priv ; 

__attribute__((used)) static bool FUNC6(struct pci_dev *pdev)
{
	acpi_handle dhandle, intel_handle;
	acpi_status status;
	int ret;

	dhandle = FUNC1(&pdev->dev);
	if (!dhandle)
		return false;

	status = FUNC3(dhandle, "_DSM", &intel_handle);
	if (FUNC0(status)) {
		FUNC2("no _DSM method for intel device\n");
		return false;
	}

	ret = FUNC4(dhandle, INTEL_DSM_FN_SUPPORTED_FUNCTIONS, 0);
	if (ret < 0) {
		FUNC2("failed to get supported _DSM functions\n");
		return false;
	}

	intel_dsm_priv.dhandle = dhandle;

	FUNC5();
	return true;
}