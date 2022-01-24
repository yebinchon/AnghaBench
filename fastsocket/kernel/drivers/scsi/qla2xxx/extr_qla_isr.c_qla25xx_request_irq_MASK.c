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
struct rsp_que {struct qla_msix_entry* msix; struct qla_hw_data* hw; } ;
struct qla_msix_entry {int have_irq; struct rsp_que* rsp; int /*<<< orphan*/  vector; } ;
struct qla_init_msix_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 struct qla_init_msix_entry* msix_entries ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rsp_que*) ; 

int FUNC3(struct rsp_que *rsp)
{
	struct qla_hw_data *ha = rsp->hw;
	struct qla_init_msix_entry *intr = &msix_entries[2];
	struct qla_msix_entry *msix = rsp->msix;
	scsi_qla_host_t *vha = FUNC0(ha->pdev);
	int ret;

	ret = FUNC2(msix->vector, intr->handler, 0, intr->name, rsp);
	if (ret) {
		FUNC1(ql_log_fatal, vha, 0x00e6,
		    "MSI-X: Unable to register handler -- %x/%d.\n",
		    msix->vector, ret);
		return ret;
	}
	msix->have_irq = 1;
	msix->rsp = rsp;
	return ret;
}