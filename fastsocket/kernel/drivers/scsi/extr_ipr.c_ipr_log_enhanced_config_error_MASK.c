#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ipr_ioa_cfg {int dummy; } ;
struct ipr_hostrcb_type_13_error {struct ipr_hostrcb_device_data_entry_enhanced* dev; int /*<<< orphan*/  errors_detected; int /*<<< orphan*/  errors_logged; } ;
struct ipr_hostrcb_device_data_entry_enhanced {int /*<<< orphan*/  cfc_last_with_dev_vpd; int /*<<< orphan*/  ioa_last_with_dev_vpd; int /*<<< orphan*/  new_vpd; int /*<<< orphan*/  vpd; int /*<<< orphan*/  dev_res_addr; } ;
struct TYPE_5__ {struct ipr_hostrcb_type_13_error type_13_error; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ error; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct ipr_hostrcb {TYPE_4__ hcam; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  ipr_err_separator ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct ipr_ioa_cfg *ioa_cfg,
					  struct ipr_hostrcb *hostrcb)
{
	int errors_logged, i;
	struct ipr_hostrcb_device_data_entry_enhanced *dev_entry;
	struct ipr_hostrcb_type_13_error *error;

	error = &hostrcb->hcam.u.error.u.type_13_error;
	errors_logged = FUNC0(error->errors_logged);

	FUNC1("Device Errors Detected/Logged: %d/%d\n",
		FUNC0(error->errors_detected), errors_logged);

	dev_entry = error->dev;

	for (i = 0; i < errors_logged; i++, dev_entry++) {
		ipr_err_separator;

		FUNC3(ioa_cfg, dev_entry->dev_res_addr, "Device %d", i + 1);
		FUNC2(&dev_entry->vpd);

		FUNC1("-----New Device Information-----\n");
		FUNC2(&dev_entry->new_vpd);

		FUNC1("Cache Directory Card Information:\n");
		FUNC2(&dev_entry->ioa_last_with_dev_vpd);

		FUNC1("Adapter Card Information:\n");
		FUNC2(&dev_entry->cfc_last_with_dev_vpd);
	}
}