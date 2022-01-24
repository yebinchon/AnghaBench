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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QIB_DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC11(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int ret;

	ret = FUNC2(pdev);
	if (ret) {
		/*
		 * This can happen (in theory) iff:
		 * We did a chip reset, and then failed to reprogram the
		 * BAR, or the chip reset due to an internal error.  We then
		 * unloaded the driver and reloaded it.
		 *
		 * Both reset cases set the BAR back to initial state.  For
		 * the latter case, the AER sticky error bit at offset 0x718
		 * should be set, but the Linux kernel doesn't yet know
		 * about that, it appears.  If the original BAR was retained
		 * in the kernel data structures, this may be OK.
		 */
		FUNC10(&pdev->dev, "pci enable failed: error %d\n",
			      -ret);
		goto done;
	}

	ret = FUNC5(pdev, QIB_DRV_NAME);
	if (ret) {
		FUNC9(pdev, "pci_request_regions fails: err %d\n", -ret);
		goto bail;
	}

	ret = FUNC7(pdev, FUNC0(64));
	if (ret) {
		/*
		 * If the 64 bit setup fails, try 32 bit.  Some systems
		 * do not setup 64 bit maps on systems with 2GB or less
		 * memory installed.
		 */
		ret = FUNC7(pdev, FUNC0(32));
		if (ret) {
			FUNC9(pdev, "Unable to set DMA mask: %d\n", ret);
			goto bail;
		}
		ret = FUNC6(pdev, FUNC0(32));
	} else
		ret = FUNC6(pdev, FUNC0(64));
	if (ret) {
		FUNC10(&pdev->dev,
			      "Unable to set DMA consistent mask: %d\n", ret);
		goto bail;
	}

	FUNC8(pdev);
	ret = FUNC3(pdev);
	if (ret) {
		FUNC10(&pdev->dev,
			      "Unable to enable pcie error reporting: %d\n",
			      ret);
		ret = 0;
	}
	goto done;

bail:
	FUNC1(pdev);
	FUNC4(pdev);
done:
	return ret;
}