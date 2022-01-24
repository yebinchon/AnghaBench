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
struct qla_msix_entry {int /*<<< orphan*/  rsp; int /*<<< orphan*/  vector; scalar_t__ have_irq; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;
struct qla_hw_data {int msix_count; TYPE_1__ flags; struct qla_msix_entry* msix_entries; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_msix_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_init ; 

__attribute__((used)) static void
FUNC5(struct qla_hw_data *ha)
{
	int i;
	struct qla_msix_entry *qentry;
	scsi_qla_host_t *vha = FUNC3(ha->pdev);

	for (i = 0; i < ha->msix_count; i++) {
		qentry = &ha->msix_entries[i];
		if (qentry->have_irq)
			FUNC0(qentry->vector, qentry->rsp);
	}
	FUNC2(ha->pdev);
	FUNC1(ha->msix_entries);
	ha->msix_entries = NULL;
	ha->flags.msix_enabled = 0;
	FUNC4(ql_dbg_init, vha, 0x0042,
	    "Disabled the MSI.\n");
}