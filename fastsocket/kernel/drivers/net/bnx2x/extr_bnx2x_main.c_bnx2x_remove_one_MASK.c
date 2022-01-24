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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,struct net_device*,struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct bnx2x* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct bnx2x *bp;

	if (!dev) {
		FUNC1(&pdev->dev, "BAD net device from bnx2x_init_one\n");
		return;
	}
	bp = FUNC2(dev);

	FUNC0(pdev, dev, bp, true);
}