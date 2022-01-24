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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * msr_reg ; 
 int /*<<< orphan*/ * pci_reg ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_msr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct pci_dev *pdev, int reg, int val)
{
	if (FUNC1(use_msr)) {
		FUNC2(msr_reg[reg], val, 0);
		return 0;
	}

	return FUNC0(pdev, pci_reg[reg], val);
}