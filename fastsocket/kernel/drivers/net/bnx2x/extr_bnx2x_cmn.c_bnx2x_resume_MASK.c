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
struct bnx2x {scalar_t__ recovery_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BNX2X_RECOVERY_DONE ; 
 int EAGAIN ; 
 int ENODEV ; 
 int /*<<< orphan*/  LOAD_OPEN ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct bnx2x* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC7(pdev);
	struct bnx2x *bp;
	int rc;

	if (!dev) {
		FUNC3(&pdev->dev, "BAD net device from bnx2x_init_one\n");
		return -ENODEV;
	}
	bp = FUNC4(dev);

	if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
		FUNC0("Handling parity error recovery. Try again later\n");
		return -EAGAIN;
	}

	FUNC9();

	FUNC8(pdev);

	if (!FUNC6(dev)) {
		FUNC10();
		return 0;
	}

	FUNC2(bp, PCI_D0);
	FUNC5(dev);

	rc = FUNC1(bp, LOAD_OPEN);

	FUNC10();

	return rc;
}