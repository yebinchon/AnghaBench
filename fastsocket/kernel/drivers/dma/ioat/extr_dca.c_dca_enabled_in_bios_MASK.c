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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev)
{
	/* CPUID level 9 returns DCA configuration */
	/* Bit 0 indicates DCA enabled by the BIOS */
	unsigned long cpuid_level_9;
	int res;

	cpuid_level_9 = FUNC0(9);
	res = FUNC2(0, &cpuid_level_9);
	if (!res)
		FUNC1(&pdev->dev, "DCA is disabled in BIOS\n");

	return res;
}