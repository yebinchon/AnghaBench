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
 scalar_t__ FUNC0 (struct controller*) ; 
 scalar_t__ FUNC1 (struct controller*) ; 
 int PCI_EXP_SLTCTL_ABPE ; 
 int PCI_EXP_SLTCTL_CCIE ; 
 int PCI_EXP_SLTCTL_HPIE ; 
 int PCI_EXP_SLTCTL_MRLSCE ; 
 int PCI_EXP_SLTCTL_PDCE ; 
 int PCI_EXP_SLTCTL_PFDE ; 
 scalar_t__ FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*) ; 
 scalar_t__ FUNC4 (struct controller*,int,int) ; 
 int /*<<< orphan*/  pciehp_poll_mode ; 

int FUNC5(struct controller *ctrl)
{
	u16 cmd, mask;

	cmd = PCI_EXP_SLTCTL_PDCE;
	if (FUNC0(ctrl))
		cmd |= PCI_EXP_SLTCTL_ABPE;
	if (FUNC2(ctrl))
		cmd |= PCI_EXP_SLTCTL_PFDE;
	if (FUNC1(ctrl))
		cmd |= PCI_EXP_SLTCTL_MRLSCE;
	if (!pciehp_poll_mode)
		cmd |= PCI_EXP_SLTCTL_HPIE | PCI_EXP_SLTCTL_CCIE;

	mask = (PCI_EXP_SLTCTL_PDCE | PCI_EXP_SLTCTL_ABPE |
		PCI_EXP_SLTCTL_MRLSCE | PCI_EXP_SLTCTL_PFDE |
		PCI_EXP_SLTCTL_HPIE | PCI_EXP_SLTCTL_CCIE);

	if (FUNC4(ctrl, cmd, mask)) {
		FUNC3(ctrl, "Cannot enable software notification\n");
		return -1;
	}
	return 0;
}