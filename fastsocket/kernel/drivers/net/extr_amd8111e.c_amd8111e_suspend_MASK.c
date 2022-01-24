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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipg_timer; } ;
struct amd8111e_priv {int options; int /*<<< orphan*/  lock; TYPE_1__ ipg_data; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int OPTION_DYN_IPG_ENABLE ; 
 int OPTION_WAKE_MAGIC_ENABLE ; 
 int OPTION_WAKE_PHY_ENABLE ; 
 int OPTION_WOL_ENABLE ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd8111e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct amd8111e_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pci_dev, pm_message_t state)
{
	struct net_device *dev = FUNC9(pci_dev);
	struct amd8111e_priv *lp = FUNC5(dev);

	if (!FUNC7(dev))
		return 0;

	/* disable the interrupt */
	FUNC12(&lp->lock);
	FUNC0(lp);
	FUNC13(&lp->lock);

	FUNC6(dev);

	/* stop chip */
	FUNC12(&lp->lock);
	if(lp->options & OPTION_DYN_IPG_ENABLE)
		FUNC4(&lp->ipg_data.ipg_timer);
	FUNC3(lp);
	FUNC13(&lp->lock);

	if(lp->options & OPTION_WOL_ENABLE){
		 /* enable wol */
		if(lp->options & OPTION_WAKE_MAGIC_ENABLE)
			FUNC2(lp);
		if(lp->options & OPTION_WAKE_PHY_ENABLE)
			FUNC1(lp);

		FUNC8(pci_dev, PCI_D3hot, 1);
		FUNC8(pci_dev, PCI_D3cold, 1);

	}
	else{
		FUNC8(pci_dev, PCI_D3hot, 0);
		FUNC8(pci_dev, PCI_D3cold, 0);
	}

	FUNC10(pci_dev);
	FUNC11(pci_dev, PCI_D3hot);

	return 0;
}