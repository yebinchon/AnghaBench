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
struct TYPE_2__ {int /*<<< orphan*/  sem; } ;
struct pci_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int) ; 
 int FUNC6 (struct pci_dev*,int) ; 
 int FUNC7 (struct pci_dev*,int) ; 
 int FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev, int probe)
{
	int rc;

	FUNC1();

	if (!probe) {
		FUNC3(dev);
		/* block PM suspend, driver probe, etc. */
		FUNC0(&dev->dev.sem);
	}

	rc = FUNC5(dev, probe);
	if (rc != -ENOTTY)
		goto done;

	rc = FUNC8(dev, probe);
	if (rc != -ENOTTY)
		goto done;

	rc = FUNC2(dev, probe);
	if (rc != -ENOTTY)
		goto done;

	rc = FUNC7(dev, probe);
	if (rc != -ENOTTY)
		goto done;

	rc = FUNC6(dev, probe);
done:
	if (!probe) {
		FUNC9(&dev->dev.sem);
		FUNC4(dev);
	}

	return rc;
}