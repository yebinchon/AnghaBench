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
struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
struct intel_quirk {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; int /*<<< orphan*/  (* hook ) (struct drm_device*) ;int /*<<< orphan*/ * dmi_id_list; } ;
struct drm_device {struct pci_dev* pdev; } ;

/* Variables and functions */
 int FUNC0 (struct intel_quirk*) ; 
 scalar_t__ PCI_ANY_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_quirk* intel_dmi_quirks ; 
 struct intel_quirk* intel_quirks ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	struct pci_dev *d = dev->pdev;
	int i;

	for (i = 0; i < FUNC0(intel_quirks); i++) {
		struct intel_quirk *q = &intel_quirks[i];

		if (d->device == q->device &&
		    (d->subsystem_vendor == q->subsystem_vendor ||
		     q->subsystem_vendor == PCI_ANY_ID) &&
		    (d->subsystem_device == q->subsystem_device ||
		     q->subsystem_device == PCI_ANY_ID))
			q->hook(dev);
	}
	for (i = 0; i < FUNC0(intel_dmi_quirks); i++) {
		if (FUNC1(*intel_dmi_quirks[i].dmi_id_list) != 0)
			intel_dmi_quirks[i].hook(dev);
	}
}