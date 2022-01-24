#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  retries; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct ismt_priv {TYPE_3__ adapter; int /*<<< orphan*/  smba; struct pci_dev* pci_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  ISMT_MAX_RETRIES ; 
 size_t SMBBAR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct ismt_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct ismt_priv*) ; 
 int FUNC7 (struct ismt_priv*) ; 
 TYPE_2__ ismt_driver ; 
 int /*<<< orphan*/  FUNC8 (struct ismt_priv*) ; 
 int FUNC9 (struct ismt_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,size_t) ; 
 int FUNC11 (struct pci_dev*,size_t,int /*<<< orphan*/ ) ; 
 unsigned long FUNC12 (struct pci_dev*,size_t) ; 
 unsigned long FUNC13 (struct pci_dev*,size_t) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct ismt_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,size_t,unsigned long) ; 
 int /*<<< orphan*/  smbus_algorithm ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 

__attribute__((used)) static int
FUNC21(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int err;
	struct ismt_priv *priv;
	unsigned long start, len;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC16(pdev, priv);
	FUNC6(&priv->adapter, priv);
	priv->adapter.owner = THIS_MODULE;

	priv->adapter.class = I2C_CLASS_HWMON;

	priv->adapter.algo = &smbus_algorithm;

	/* set up the sysfs linkage to our parent device */
	priv->adapter.dev.parent = &pdev->dev;

	/* number of retries on lost arbitration */
	priv->adapter.retries = ISMT_MAX_RETRIES;

	priv->pci_dev = pdev;

	err = FUNC18(pdev);
	if (err) {
		FUNC3(&pdev->dev, "Failed to enable SMBus PCI device (%d)\n",
			err);
		return err;
	}

	/* enable bus mastering */
	FUNC17(pdev);

	/* Determine the address of the SMBus area */
	start = FUNC13(pdev, SMBBAR);
	len = FUNC12(pdev, SMBBAR);
	if (!start || !len) {
		FUNC3(&pdev->dev,
			"SMBus base address uninitialized, upgrade BIOS\n");
		return -ENODEV;
	}

	FUNC20(priv->adapter.name, sizeof(priv->adapter.name),
		 "SMBus iSMT adapter at %lx", start);

	FUNC2(&priv->pci_dev->dev, " start=0x%lX\n", start);
	FUNC2(&priv->pci_dev->dev, " len=0x%lX\n", len);

	err = FUNC1(&pdev->resource[SMBBAR]);
	if (err) {
		FUNC3(&pdev->dev, "ACPI resource conflict!\n");
		return err;
	}

	err = FUNC11(pdev, SMBBAR, ismt_driver.name);
	if (err) {
		FUNC3(&pdev->dev,
			"Failed to request SMBus region 0x%lx-0x%lx\n",
			start, start + len);
		return err;
	}

	priv->smba = FUNC19(pdev, SMBBAR, len);
	if (!priv->smba) {
		FUNC3(&pdev->dev, "Unable to ioremap SMBus BAR\n");
		err = -ENODEV;
		goto fail;
	}

	if ((FUNC15(pdev, FUNC0(64)) != 0) ||
	    (FUNC14(pdev, FUNC0(64)) != 0)) {
		if ((FUNC15(pdev, FUNC0(32)) != 0) ||
		    (FUNC14(pdev,
						 FUNC0(32)) != 0)) {
			FUNC3(&pdev->dev, "pci_set_dma_mask fail %p\n",
				pdev);
			goto fail;
		}
	}

	err = FUNC7(priv);
	if (err)
		goto fail;

	FUNC8(priv);

	err = FUNC9(priv);
	if (err)
		goto fail;

	err = FUNC5(&priv->adapter);
	if (err) {
		FUNC3(&pdev->dev, "Failed to add SMBus iSMT adapter\n");
		err = -ENODEV;
		goto fail;
	}
	return 0;

fail:
	FUNC10(pdev, SMBBAR);
	return err;
}