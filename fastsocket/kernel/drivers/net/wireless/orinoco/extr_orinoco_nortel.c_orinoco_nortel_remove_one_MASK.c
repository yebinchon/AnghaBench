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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;
struct orinoco_private {TYPE_1__ hw; struct orinoco_pci_card* card; } ;
struct orinoco_pci_card {scalar_t__ bridge_io; scalar_t__ attr_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct orinoco_private* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct orinoco_private *priv = FUNC5(pdev);
	struct orinoco_pci_card *card = priv->card;

	/* Clear LEDs */
	FUNC2(0, card->bridge_io + 10);

	FUNC3(priv);
	FUNC0(pdev->irq, priv);
	FUNC8(pdev, NULL);
	FUNC1(priv);
	FUNC6(pdev, priv->hw.iobase);
	FUNC6(pdev, card->attr_io);
	FUNC6(pdev, card->bridge_io);
	FUNC7(pdev);
	FUNC4(pdev);
}