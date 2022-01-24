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
struct bnad {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC8(struct bnad *bnad,
	      struct pci_dev *pdev, bool *using_dac)
{
	int err;

	err = FUNC4(pdev);
	if (err)
		return err;
	err = FUNC6(pdev, BNAD_NAME);
	if (err)
		goto disable_device;
	if (!FUNC2(&pdev->dev, FUNC0(64)) &&
	    !FUNC1(&pdev->dev, FUNC0(64))) {
		*using_dac = true;
	} else {
		err = FUNC2(&pdev->dev, FUNC0(32));
		if (err) {
			err = FUNC1(&pdev->dev,
						    FUNC0(32));
			if (err)
				goto release_regions;
		}
		*using_dac = false;
	}
	FUNC7(pdev);
	return 0;

release_regions:
	FUNC5(pdev);
disable_device:
	FUNC3(pdev);

	return err;
}