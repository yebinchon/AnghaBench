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
struct pcie_device {int /*<<< orphan*/  irq; } ;
struct aer_rpc {scalar_t__ prod_idx; scalar_t__ cons_idx; int /*<<< orphan*/  wait_release; scalar_t__ isr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aer_rpc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pcie_device*) ; 
 struct aer_rpc* FUNC2 (struct pcie_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct aer_rpc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcie_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct pcie_device *dev)
{
	struct aer_rpc *rpc = FUNC2(dev);

	if (rpc) {
		/* If register interrupt service, it must be free. */
		if (rpc->isr)
			FUNC1(dev->irq, dev);

		FUNC5(rpc->wait_release, rpc->prod_idx == rpc->cons_idx);

		FUNC0(rpc);
		FUNC3(rpc);
		FUNC4(dev, NULL);
	}
}