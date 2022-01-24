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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  UNI_N_CLOCK_CNTL ; 
 int /*<<< orphan*/  UNI_N_CLOCK_CNTL_ATA100 ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pci_dev*) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int uninorth_rev ; 

__attribute__((used)) static long
FUNC11(struct device_node *node, long value)
{
	unsigned long flags;
	struct pci_dev *pdev = NULL;
	u8 pbus, pid;
	int rc;

	if (uninorth_rev < 0x24)
		return -ENODEV;

	FUNC0(flags);
	if (value)
		FUNC3(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_ATA100);
	else
		FUNC2(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_ATA100);
	(void)FUNC4(UNI_N_CLOCK_CNTL);
	FUNC1(flags);
	FUNC10(20);

	if (value) {
		if (FUNC6(node, &pbus, &pid) == 0)
			pdev = FUNC8(pbus, pid);
		if (pdev == NULL)
			return 0;
		rc = FUNC7(pdev);
		if (rc == 0)
			FUNC9(pdev);
		FUNC5(pdev);
		if (rc)
			return rc;
	}
	return 0;
}