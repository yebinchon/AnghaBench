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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct edd_device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct edd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC3(struct edd_device *edev)
{

	struct pci_dev *pci_dev = FUNC0(edev);
	int ret;
	if (!pci_dev)
		return 1;
	ret = FUNC2(&edev->kobj,&pci_dev->dev.kobj,"pci_dev");
	FUNC1(pci_dev);
	return ret;
}