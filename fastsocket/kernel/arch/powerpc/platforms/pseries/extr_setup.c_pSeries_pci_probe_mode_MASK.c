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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int PCI_PROBE_DEVTREE ; 
 int PCI_PROBE_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pci_bus *bus)
{
	if (FUNC0(FW_FEATURE_LPAR))
		return PCI_PROBE_DEVTREE;
	return PCI_PROBE_NORMAL;
}