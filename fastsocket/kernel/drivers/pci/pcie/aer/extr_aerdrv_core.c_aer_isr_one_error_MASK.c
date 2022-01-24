#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcie_device {TYPE_1__* port; } ;
struct aer_err_source {int status; int /*<<< orphan*/  id; } ;
struct aer_err_info {int multi_error_valid; int /*<<< orphan*/  severity; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AER_CORRECTABLE ; 
 int /*<<< orphan*/  AER_FATAL ; 
 int /*<<< orphan*/  AER_NONFATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int PCI_ERR_ROOT_COR_RCV ; 
 int PCI_ERR_ROOT_FATAL_RCV ; 
 int PCI_ERR_ROOT_MULTI_COR_RCV ; 
 int PCI_ERR_ROOT_MULTI_UNCOR_RCV ; 
 int PCI_ERR_ROOT_UNCOR_RCV ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcie_device*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct aer_err_info*) ; 
 struct aer_err_info* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pcie_device *p_device,
		struct aer_err_source *e_src)
{
	struct aer_err_info *e_info;

	/* struct aer_err_info might be big, so we allocate it with slab */
	e_info = FUNC7(sizeof(struct aer_err_info), GFP_KERNEL);
	if (!e_info) {
		FUNC4(KERN_DEBUG, &p_device->port->dev,
			"Can't allocate mem when processing AER errors\n");
		return;
	}

	/*
	 * There is a possibility that both correctable error and
	 * uncorrectable error being logged. Report correctable error first.
	 */
	if (e_src->status & PCI_ERR_ROOT_COR_RCV) {
		e_info->id = FUNC0(e_src->id);
		e_info->severity = AER_CORRECTABLE;

		if (e_src->status & PCI_ERR_ROOT_MULTI_COR_RCV)
			e_info->multi_error_valid = 1;
		else
			e_info->multi_error_valid = 0;

		FUNC2(p_device->port, e_info);

		if (FUNC5(p_device->port, e_info))
			FUNC3(p_device, e_info);
	}

	if (e_src->status & PCI_ERR_ROOT_UNCOR_RCV) {
		e_info->id = FUNC1(e_src->id);

		if (e_src->status & PCI_ERR_ROOT_FATAL_RCV)
			e_info->severity = AER_FATAL;
		else
			e_info->severity = AER_NONFATAL;

		if (e_src->status & PCI_ERR_ROOT_MULTI_UNCOR_RCV)
			e_info->multi_error_valid = 1;
		else
			e_info->multi_error_valid = 0;

		FUNC2(p_device->port, e_info);

		if (FUNC5(p_device->port, e_info))
			FUNC3(p_device, e_info);
	}

	FUNC6(e_info);
}