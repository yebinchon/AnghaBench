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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct nouveau_bios {int* data; int size; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 TYPE_1__* FUNC5 (struct nouveau_bios*) ; 
 scalar_t__ FUNC6 (int*,int) ; 

__attribute__((used)) static void
FUNC7(struct nouveau_bios *bios)
{
	struct pci_dev *pdev = FUNC5(bios)->pdev;
	int ret, cnt, i;

	if (!FUNC4(pdev)) {
		bios->data = NULL;
		return;
	}

	bios->size = 0;
	bios->data = FUNC1(4096, GFP_KERNEL);
	if (bios->data) {
		if (FUNC3(bios->data, 0, 4096) == 4096)
			bios->size = bios->data[2] * 512;
		FUNC0(bios->data);
	}

	if (!bios->size)
		return;

	bios->data = FUNC1(bios->size, GFP_KERNEL);
	if (bios->data) {
		/* disobey the acpi spec - much faster on at least w530 ... */
		ret = FUNC3(bios->data, 0, bios->size);
		if (ret != bios->size ||
		    FUNC6(bios->data, bios->size)) {
			/* ... that didn't work, ok, i'll be good now */
			for (i = 0; i < bios->size; i += cnt) {
				cnt = FUNC2((bios->size - i), (u32)4096);
				ret = FUNC3(bios->data, i, cnt);
				if (ret != cnt)
					break;
			}
		}
	}
}