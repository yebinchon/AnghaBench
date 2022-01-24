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
struct driver_data {int /*<<< orphan*/  online_list; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  remove_list; struct pci_dev* pdev; int /*<<< orphan*/  instance; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MTIP_ABAR ; 
 int /*<<< orphan*/  MTIP_DDF_INIT_DONE_BIT ; 
 int /*<<< orphan*/  MTIP_DRV_NAME ; 
 int MTIP_FTL_REBUILD_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  instance ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*) ; 
 struct driver_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct driver_data*) ; 
 int /*<<< orphan*/  mtip_major ; 
 int /*<<< orphan*/  online_list ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct driver_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pdev,
			const struct pci_device_id *ent)
{
	int rv = 0;
	struct driver_data *dd = NULL;
	unsigned long flags;

	/* Allocate memory for this devices private data. */
	dd = FUNC5(sizeof(struct driver_data), GFP_KERNEL);
	if (dd == NULL) {
		FUNC2(&pdev->dev,
			"Unable to allocate memory for driver data\n");
		return -ENOMEM;
	}

	/* Attach the private data to this PCI device.  */
	FUNC12(pdev, dd);

	rv = FUNC14(pdev);
	if (rv < 0) {
		FUNC2(&pdev->dev, "Unable to enable device\n");
		goto iomap_err;
	}

	/* Map BAR5 to memory. */
	rv = FUNC15(pdev, 1 << MTIP_ABAR, MTIP_DRV_NAME);
	if (rv < 0) {
		FUNC2(&pdev->dev, "Unable to map regions\n");
		goto iomap_err;
	}

	if (!FUNC11(pdev, FUNC0(64))) {
		rv = FUNC10(pdev, FUNC0(64));

		if (rv) {
			rv = FUNC10(pdev,
						FUNC0(32));
			if (rv) {
				FUNC3(&pdev->dev,
					"64-bit DMA enable failed\n");
				goto setmask_err;
			}
		}
	}

	FUNC13(pdev);
	rv = FUNC9(pdev);
	if (rv) {
		FUNC3(&pdev->dev,
			"Unable to enable MSI interrupt.\n");
		goto block_initialize_err;
	}

	/* Copy the info we may need later into the private data structure. */
	dd->major	= mtip_major;
	dd->instance	= instance;
	dd->pdev	= pdev;

	FUNC1(&dd->online_list);
	FUNC1(&dd->remove_list);

	/* Initialize the block layer. */
	rv = FUNC7(dd);
	if (rv < 0) {
		FUNC2(&pdev->dev,
			"Unable to initialize block layer\n");
		goto block_initialize_err;
	}

	/*
	 * Increment the instance count so that each device has a unique
	 * instance number.
	 */
	instance++;
	if (rv != MTIP_FTL_REBUILD_MAGIC)
		FUNC17(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag);
	else
		rv = 0; /* device in rebuild state, return 0 from probe */

	/* Add to online list even if in ftl rebuild */
	FUNC18(&dev_lock, flags);
	FUNC6(&dd->online_list, &online_list);
	FUNC19(&dev_lock, flags);

	goto done;

block_initialize_err:
	FUNC8(pdev);

setmask_err:
	FUNC16(pdev, 1 << MTIP_ABAR);

iomap_err:
	FUNC4(dd);
	FUNC12(pdev, NULL);
	return rv;
done:
	return rv;
}