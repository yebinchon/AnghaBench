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
struct pci_sriov {TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {int /*<<< orphan*/  bus; TYPE_3__ dev; struct pci_sriov* sriov; } ;
struct pci_bus {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sriov; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int VIRTFN_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct pci_bus* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC7 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *dev, int id, int reset)
{
	char buf[VIRTFN_ID_LEN];
	struct pci_bus *bus;
	struct pci_dev *virtfn;
	struct pci_sriov *iov = dev->sriov;

	bus = FUNC6(FUNC5(dev->bus), FUNC11(dev, id));
	if (!bus)
		return;

	virtfn = FUNC7(bus, FUNC12(dev, id));
	if (!virtfn)
		return;

	FUNC4(virtfn);

	if (reset) {
		FUNC1(&virtfn->dev);
		FUNC0(virtfn);
	}

	FUNC9(buf, "virtfn%u", id);
	FUNC10(&dev->dev.kobj, buf);
	FUNC10(&virtfn->dev.kobj, "physfn");

	FUNC2(&iov->dev->sriov->lock);
	FUNC8(virtfn);
	FUNC13(dev->bus, FUNC11(dev, id));
	FUNC3(&iov->dev->sriov->lock);

	FUNC4(dev);
}