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
struct pcie_device {int /*<<< orphan*/  port; } ;
struct aer_rpc {int prod_idx; int cons_idx; int /*<<< orphan*/  dpc_handler; int /*<<< orphan*/  e_lock; TYPE_1__* e_sources; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned int status; unsigned int id; } ;

/* Variables and functions */
 int AER_ERROR_SOURCES_MAX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int PCI_ERR_ROOT_COR_RCV ; 
 scalar_t__ PCI_ERR_ROOT_ERR_SRC ; 
 scalar_t__ PCI_ERR_ROOT_STATUS ; 
 unsigned int PCI_ERR_ROOT_UNCOR_RCV ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 struct aer_rpc* FUNC0 (struct pcie_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

irqreturn_t FUNC7(int irq, void *context)
{
	unsigned int status, id;
	struct pcie_device *pdev = (struct pcie_device *)context;
	struct aer_rpc *rpc = FUNC0(pdev);
	int next_prod_idx;
	unsigned long flags;
	int pos;

	pos = FUNC1(pdev->port, PCI_EXT_CAP_ID_ERR);
	/*
	 * Must lock access to Root Error Status Reg, Root Error ID Reg,
	 * and Root error producer/consumer index
	 */
	FUNC5(&rpc->e_lock, flags);

	/* Read error status */
	FUNC2(pdev->port, pos + PCI_ERR_ROOT_STATUS, &status);
	if (!(status & (PCI_ERR_ROOT_UNCOR_RCV|PCI_ERR_ROOT_COR_RCV))) {
		FUNC6(&rpc->e_lock, flags);
		return IRQ_NONE;
	}

	/* Read error source and clear error status */
	FUNC2(pdev->port, pos + PCI_ERR_ROOT_ERR_SRC, &id);
	FUNC3(pdev->port, pos + PCI_ERR_ROOT_STATUS, status);

	/* Store error source for later DPC handler */
	next_prod_idx = rpc->prod_idx + 1;
	if (next_prod_idx == AER_ERROR_SOURCES_MAX)
		next_prod_idx = 0;
	if (next_prod_idx == rpc->cons_idx) {
		/*
		 * Error Storm Condition - possibly the same error occurred.
		 * Drop the error.
		 */
		FUNC6(&rpc->e_lock, flags);
		return IRQ_HANDLED;
	}
	rpc->e_sources[rpc->prod_idx].status =  status;
	rpc->e_sources[rpc->prod_idx].id = id;
	rpc->prod_idx = next_prod_idx;
	FUNC6(&rpc->e_lock, flags);

	/*  Invoke DPC handler */
	FUNC4(&rpc->dpc_handler);

	return IRQ_HANDLED;
}