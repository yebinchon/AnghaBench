#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct amd_northbridge {int dummy; } ;
struct TYPE_6__ {int num; int /*<<< orphan*/  flags; struct amd_northbridge* nb; } ;
struct TYPE_5__ {int x86; int x86_model; int x86_mask; } ;
struct TYPE_4__ {struct pci_dev* link; struct pci_dev* misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_NB_GART ; 
 int /*<<< orphan*/  AMD_NB_L3_INDEX_DISABLE ; 
 int /*<<< orphan*/  AMD_NB_L3_PARTITIONING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amd_nb_link_ids ; 
 int /*<<< orphan*/  amd_nb_misc_ids ; 
 int FUNC0 () ; 
 TYPE_3__ amd_northbridges ; 
 TYPE_2__ boot_cpu_data ; 
 struct amd_northbridge* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 

int FUNC4(void)
{
	u16 i = 0;
	struct amd_northbridge *nb;
	struct pci_dev *misc, *link;

	if (FUNC0())
		return 0;

	misc = NULL;
	while ((misc = FUNC2(misc, amd_nb_misc_ids)) != NULL)
		i++;

	if (i == 0)
		return 0;

	nb = FUNC1(i * sizeof(struct amd_northbridge), GFP_KERNEL);
	if (!nb)
		return -ENOMEM;

	amd_northbridges.nb = nb;
	amd_northbridges.num = i;

	link = misc = NULL;
	for (i = 0; i != FUNC0(); i++) {
		FUNC3(i)->misc = misc =
			FUNC2(misc, amd_nb_misc_ids);
		FUNC3(i)->link = link =
			FUNC2(link, amd_nb_link_ids);
	}

	if (boot_cpu_data.x86 == 0xf || boot_cpu_data.x86 == 0x10 ||
	    boot_cpu_data.x86 == 0x15)
		amd_northbridges.flags |= AMD_NB_GART;

	/*
	 * Some CPU families support L3 Cache Index Disable. There are some
	 * limitations because of E382 and E388 on family 0x10.
	 */
	if (boot_cpu_data.x86 == 0x10 &&
	    boot_cpu_data.x86_model >= 0x8 &&
	    (boot_cpu_data.x86_model > 0x9 ||
	     boot_cpu_data.x86_mask >= 0x1))
		amd_northbridges.flags |= AMD_NB_L3_INDEX_DISABLE;

	if (boot_cpu_data.x86 == 0x15)
		amd_northbridges.flags |= AMD_NB_L3_INDEX_DISABLE;

	/* L3 cache partitioning is supported on family 0x15 */
	if (boot_cpu_data.x86 == 0x15)
		amd_northbridges.flags |= AMD_NB_L3_PARTITIONING;

	return 0;
}