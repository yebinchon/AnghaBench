#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;
struct TYPE_2__ {int (* have_wrcomb ) () ;} ;

/* Variables and functions */
 int PCI_CLASS_BRIDGE_HOST ; 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_82451NX ; 
 scalar_t__ PCI_DEVICE_ID_SERVERWORKS_LE ; 
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 scalar_t__ PCI_VENDOR_ID_SERVERWORKS ; 
 TYPE_1__* mtrr_if ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	struct pci_dev *dev;
	u8 rev;

	dev = FUNC1(PCI_CLASS_BRIDGE_HOST << 8, NULL);
	if (dev != NULL) {
		/*
		 * ServerWorks LE chipsets < rev 6 have problems with
		 * write-combining. Don't allow it and leave room for other
		 * chipsets to be tagged
		 */
		if (dev->vendor == PCI_VENDOR_ID_SERVERWORKS &&
		    dev->device == PCI_DEVICE_ID_SERVERWORKS_LE) {
			FUNC2(dev, PCI_CLASS_REVISION, &rev);
			if (rev <= 5) {
				FUNC3("mtrr: Serverworks LE rev < 6 detected. Write-combining disabled.\n");
				FUNC0(dev);
				return 0;
			}
		}
		/*
		 * Intel 450NX errata # 23. Non ascending cacheline evictions to
		 * write combining memory may resulting in data corruption
		 */
		if (dev->vendor == PCI_VENDOR_ID_INTEL &&
		    dev->device == PCI_DEVICE_ID_INTEL_82451NX) {
			FUNC3("mtrr: Intel 450NX MMC detected. Write-combining disabled.\n");
			FUNC0(dev);
			return 0;
		}
		FUNC0(dev);
	}
	return mtrr_if->have_wrcomb ? mtrr_if->have_wrcomb() : 0;
}