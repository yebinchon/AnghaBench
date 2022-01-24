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
typedef  int u32 ;
struct fw_ohci {int dummy; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  OHCI1394_PhyControl ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int OHCI1394_PhyControl_ReadDone ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct fw_ohci* FUNC5 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct fw_card *card, int addr,
			       int clear_bits, int set_bits)
{
	struct fw_ohci *ohci = FUNC5(card);
	u32 val, old;

	FUNC8(ohci, OHCI1394_PhyControl, FUNC0(addr));
	FUNC3(ohci);
	FUNC6(2);
	val = FUNC7(ohci, OHCI1394_PhyControl);
	if ((val & OHCI1394_PhyControl_ReadDone) == 0) {
		FUNC4("failed to set phy reg bits.\n");
		return -EBUSY;
	}

	old = FUNC1(val);
	old = (old & ~clear_bits) | set_bits;
	FUNC8(ohci, OHCI1394_PhyControl,
		  FUNC2(addr, old));

	return 0;
}