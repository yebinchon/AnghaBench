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
struct net_device {scalar_t__ irq; } ;
struct hostap_plx_priv {scalar_t__ attr_mem; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct hostap_plx_priv* hw_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hostap_plx_priv*) ; 
 struct hostap_interface* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *dev;
	struct hostap_interface *iface;
	struct hostap_plx_priv *hw_priv;

	dev = FUNC6(pdev);
	iface = FUNC4(dev);
	hw_priv = iface->local->hw_priv;

	/* Reset the hardware, and ensure interrupts are disabled. */
	FUNC8(iface->local);
	FUNC1(dev);

	if (hw_priv->attr_mem)
		FUNC2(hw_priv->attr_mem);
	if (dev->irq)
		FUNC0(dev->irq, dev);

	FUNC7(dev);
	FUNC3(hw_priv);
	FUNC5(pdev);
}