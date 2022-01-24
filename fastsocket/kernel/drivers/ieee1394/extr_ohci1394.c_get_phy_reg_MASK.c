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
typedef  int u8 ;
struct ti_ohci {int /*<<< orphan*/  phy_reg_lock; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  OHCI1394_PhyControl ; 
 int OHCI_LOOP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8 FUNC6(struct ti_ohci *ohci, u8 addr)
{
	int i;
	unsigned long flags;
	quadlet_t r;

	FUNC4 (&ohci->phy_reg_lock, flags);

	FUNC3(ohci, OHCI1394_PhyControl, (addr << 8) | 0x00008000);

	for (i = 0; i < OHCI_LOOP_COUNT; i++) {
		if (FUNC2(ohci, OHCI1394_PhyControl) & 0x80000000)
			break;

		FUNC1(1);
	}

	r = FUNC2(ohci, OHCI1394_PhyControl);

	if (i >= OHCI_LOOP_COUNT)
		FUNC0 (KERN_ERR, "Get PHY Reg timeout [0x%08x/0x%08x/%d]",
		       r, r & 0x80000000, i);

	FUNC5 (&ohci->phy_reg_lock, flags);

	return (r & 0x00ff0000) >> 16;
}