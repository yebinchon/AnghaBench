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
struct pci_dev {int dummy; } ;
struct dscc4_pci_priv {int /*<<< orphan*/  dev; struct dscc4_pci_priv* root; } ;
struct dscc4_dev_priv {int /*<<< orphan*/  dev; struct dscc4_dev_priv* root; } ;

/* Variables and functions */
 int dev_per_card ; 
 int /*<<< orphan*/  FUNC0 (struct dscc4_pci_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dscc4_pci_priv*) ; 
 struct dscc4_pci_priv* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct dscc4_pci_priv *ppriv;
	struct dscc4_dev_priv *root;
	int i;

	ppriv = FUNC3(pdev);
	root = ppriv->root;

	for (i = 0; i < dev_per_card; i++)
		FUNC5(FUNC0(root + i));

	FUNC4(pdev, NULL);

	for (i = 0; i < dev_per_card; i++)
		FUNC1(root[i].dev);
	FUNC2(root);
	FUNC2(ppriv);
}