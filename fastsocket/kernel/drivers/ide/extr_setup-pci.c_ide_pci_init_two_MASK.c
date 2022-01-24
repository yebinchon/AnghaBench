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
struct ide_port_info {int dummy; } ;
struct ide_hw {int irq; } ;
struct ide_host {int /*<<< orphan*/  irq_flags; void* host_priv; int /*<<< orphan*/ ** dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (struct pci_dev*,struct ide_port_info const*,int) ; 
 struct ide_host* FUNC1 (struct ide_port_info const*,struct ide_hw**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ide_host*) ; 
 int FUNC3 (struct ide_host*,struct ide_port_info const*,struct ide_hw**) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct ide_port_info const*,struct ide_hw*,struct ide_hw**) ; 
 int FUNC6 (struct pci_dev*,struct ide_port_info const*,int) ; 
 void* FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct ide_host*) ; 

int FUNC9(struct pci_dev *dev1, struct pci_dev *dev2,
		     const struct ide_port_info *d, void *priv)
{
	struct pci_dev *pdev[] = { dev1, dev2 };
	struct ide_host *host;
	int ret, i, n_ports = dev2 ? 4 : 2;
	struct ide_hw hw[4], *hws[] = { NULL, NULL, NULL, NULL };

	for (i = 0; i < n_ports / 2; i++) {
		ret = FUNC6(pdev[i], d, !i);
		if (ret < 0)
			goto out;

		FUNC5(pdev[i], d, &hw[i*2], &hws[i*2]);
	}

	host = FUNC1(d, hws, n_ports);
	if (host == NULL) {
		ret = -ENOMEM;
		goto out;
	}

	host->dev[0] = &dev1->dev;
	if (dev2)
		host->dev[1] = &dev2->dev;

	host->host_priv = priv;
	host->irq_flags = IRQF_SHARED;

	FUNC8(pdev[0], host);
	if (dev2)
		FUNC8(pdev[1], host);

	for (i = 0; i < n_ports / 2; i++) {
		ret = FUNC0(pdev[i], d, !i);

		/*
		 * FIXME: Mom, mom, they stole me the helper function to undo
		 * do_ide_setup_pci_device() on the first device!
		 */
		if (ret < 0)
			goto out;

		/* fixup IRQ */
		if (FUNC4(pdev[i])) {
			hw[i*2].irq = FUNC7(pdev[i], 0);
			hw[i*2 + 1].irq = FUNC7(pdev[i], 1);
		} else
			hw[i*2 + 1].irq = hw[i*2].irq = ret;
	}

	ret = FUNC3(host, d, hws);
	if (ret)
		FUNC2(host);
out:
	return ret;
}