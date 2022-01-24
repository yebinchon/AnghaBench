#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  void* acpi_handle ;
struct TYPE_3__ {void* handle; } ;
struct TYPE_4__ {TYPE_1__ atpx; void* dhandle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,void**) ; 
 TYPE_2__ radeon_atpx_priv ; 

__attribute__((used)) static bool FUNC3(struct pci_dev *pdev)
{
	acpi_handle dhandle, atpx_handle;
	acpi_status status;

	dhandle = FUNC1(&pdev->dev);
	if (!dhandle)
		return false;

	status = FUNC2(dhandle, "ATPX", &atpx_handle);
	if (FUNC0(status))
		return false;

	radeon_atpx_priv.dhandle = dhandle;
	radeon_atpx_priv.atpx.handle = atpx_handle;
	return true;
}