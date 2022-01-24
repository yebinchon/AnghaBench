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
typedef  int u16 ;
struct slot {int /*<<< orphan*/  hotplug_slot; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENODEV ; 
 int HS_CSR_LOO ; 
 int /*<<< orphan*/  PCI_CAP_ID_CHSWP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC5(struct slot* slot)
{
	int hs_cap;
	u16 hs_csr;

	hs_cap = FUNC2(slot->bus,
					 slot->devfn,
					 PCI_CAP_ID_CHSWP);
	if (!hs_cap)
		return -ENODEV;
	if (FUNC3(slot->bus,
				     slot->devfn,
				     hs_cap + 2,
				     &hs_csr))
		return -ENODEV;
	if (hs_csr & HS_CSR_LOO) {
		hs_csr &= ~HS_CSR_LOO;
		if (FUNC4(slot->bus,
					      slot->devfn,
					      hs_cap + 2,
					      hs_csr)) {
			FUNC0("Could not clear LOO for slot %s",
			    FUNC1(slot->hotplug_slot));
			return -ENODEV;
		}
	}
	return 0;
}