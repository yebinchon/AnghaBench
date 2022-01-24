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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev, void *data)
{
	int mps, orig_mps;

	if (!FUNC1(dev))
		return 0;

	mps = 128 << *(u8 *)data;
	orig_mps = FUNC2(dev);

	FUNC4(dev, mps);
	FUNC5(dev);

	FUNC0(&dev->dev, "PCI-E Max Payload Size set to %4d/%4d (was %4d), "
		 "Max Read Rq %4d\n", FUNC2(dev),
		 128 << FUNC6(dev), orig_mps, FUNC3(dev));

	return 0;
}