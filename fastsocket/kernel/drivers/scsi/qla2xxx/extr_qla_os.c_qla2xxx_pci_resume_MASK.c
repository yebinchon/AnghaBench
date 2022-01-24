#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ eeh_busy; } ;
struct qla_hw_data {TYPE_1__ flags; } ;
struct pci_dev {int dummy; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 TYPE_2__* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_aer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(struct pci_dev *pdev)
{
	scsi_qla_host_t *base_vha = FUNC1(pdev);
	struct qla_hw_data *ha = base_vha->hw;
	int ret;

	FUNC2(ql_dbg_aer, base_vha, 0x900f,
	    "pci_resume.\n");

	ret = FUNC4(base_vha);
	if (ret != QLA_SUCCESS) {
		FUNC3(ql_log_fatal, base_vha, 0x9002,
		    "The device failed to resume I/O from slot/link_reset.\n");
	}

	FUNC0(pdev);

	ha->flags.eeh_busy = 0;
}