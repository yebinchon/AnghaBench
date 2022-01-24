#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {TYPE_2__* resource; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct apertures_struct {int count; TYPE_1__* ranges; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {void* size; void* base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IORESOURCE_ROM_SHADOW ; 
 size_t PCI_ROM_RESOURCE ; 
 struct apertures_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  driver ; 
 int FUNC1 (struct pci_dev*,struct pci_device_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct apertures_struct*) ; 
 int /*<<< orphan*/  nouveau_config ; 
 int /*<<< orphan*/  nouveau_debug ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_device**) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 void* FUNC7 (struct pci_dev*,int) ; 
 void* FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct apertures_struct*,char*,int) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev,
			     const struct pci_device_id *pent)
{
	struct nouveau_device *device;
	struct apertures_struct *aper;
	bool boot = false;
	int ret;

	/* remove conflicting drivers (vesafb, efifb etc) */
	aper = FUNC0(3);
	if (!aper)
		return -ENOMEM;

	aper->ranges[0].base = FUNC8(pdev, 1);
	aper->ranges[0].size = FUNC7(pdev, 1);
	aper->count = 1;

	if (FUNC7(pdev, 2)) {
		aper->ranges[aper->count].base = FUNC8(pdev, 2);
		aper->ranges[aper->count].size = FUNC7(pdev, 2);
		aper->count++;
	}

	if (FUNC7(pdev, 3)) {
		aper->ranges[aper->count].base = FUNC8(pdev, 3);
		aper->ranges[aper->count].size = FUNC7(pdev, 3);
		aper->count++;
	}

#ifdef CONFIG_X86
	boot = pdev->resource[PCI_ROM_RESOURCE].flags & IORESOURCE_ROM_SHADOW;
#endif
	FUNC10(aper, "nouveaufb", boot);
	FUNC2(aper);

	ret = FUNC3(pdev, FUNC4(pdev), FUNC6(pdev),
				    nouveau_config, nouveau_debug, &device);
	if (ret)
		return ret;

	FUNC9(pdev);

	ret = FUNC1(pdev, pent, &driver);
	if (ret) {
		FUNC5(NULL, (struct nouveau_object **)&device);
		return ret;
	}

	return 0;
}