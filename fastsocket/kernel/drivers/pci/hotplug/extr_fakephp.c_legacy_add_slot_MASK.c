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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct legacy_slot {int /*<<< orphan*/  list; int /*<<< orphan*/  dev; int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct legacy_slot* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  legacy_ktype ; 
 int /*<<< orphan*/  legacy_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 TYPE_1__* pci_slots_kset ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pdev)
{
	struct legacy_slot *slot = FUNC3(sizeof(*slot), GFP_KERNEL);

	if (!slot)
		return -ENOMEM;

	if (FUNC2(&slot->kobj, &legacy_ktype,
				 &pci_slots_kset->kobj, "%s",
				 FUNC0(&pdev->dev))) {
		FUNC1(&pdev->dev, "Failed to created legacy fake slot\n");
		return -EINVAL;
	}
	slot->dev = FUNC5(pdev);

	FUNC4(&slot->list, &legacy_list);

	return 0;
}