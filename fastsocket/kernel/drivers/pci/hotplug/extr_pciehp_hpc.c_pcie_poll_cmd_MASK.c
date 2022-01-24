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
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_SLTSTA ; 
 int PCI_EXP_SLTSTA_CC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct controller*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct controller *ctrl)
{
	u16 slot_status;
	int err, timeout = 1000;

	err = FUNC1(ctrl, PCI_EXP_SLTSTA, &slot_status);
	if (!err && (slot_status & PCI_EXP_SLTSTA_CC)) {
		FUNC2(ctrl, PCI_EXP_SLTSTA, PCI_EXP_SLTSTA_CC);
		return 1;
	}
	while (timeout > 0) {
		FUNC0(10);
		timeout -= 10;
		err = FUNC1(ctrl, PCI_EXP_SLTSTA, &slot_status);
		if (!err && (slot_status & PCI_EXP_SLTSTA_CC)) {
			FUNC2(ctrl, PCI_EXP_SLTSTA, PCI_EXP_SLTSTA_CC);
			return 1;
		}
	}
	return 0;	/* timeout */
}