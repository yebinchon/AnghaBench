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
struct pcie_device {int dummy; } ;
struct aer_rpc {int /*<<< orphan*/  wait_release; int /*<<< orphan*/  rpc_mutex; int /*<<< orphan*/  dpc_handler; struct pcie_device* rpd; int /*<<< orphan*/  e_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aer_isr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct aer_rpc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcie_device*,struct aer_rpc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct aer_rpc *FUNC6(struct pcie_device *dev)
{
	struct aer_rpc *rpc;

	rpc = FUNC2(sizeof(struct aer_rpc), GFP_KERNEL);
	if (!rpc)
		return NULL;

	/* Initialize Root lock access, e_lock, to Root Error Status Reg */
	FUNC5(&rpc->e_lock);

	rpc->rpd = dev;
	FUNC0(&rpc->dpc_handler, aer_isr);
	FUNC3(&rpc->rpc_mutex);
	FUNC1(&rpc->wait_release);

	/* Use PCIe bus function to store rpc into PCIe device */
	FUNC4(dev, rpc);

	return rpc;
}