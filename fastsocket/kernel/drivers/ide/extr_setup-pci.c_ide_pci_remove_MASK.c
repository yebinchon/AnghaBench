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
struct ide_host {int host_flags; scalar_t__* dev; } ;

/* Variables and functions */
 int IDE_HFLAG_CS5520 ; 
 int IDE_HFLAG_NO_DMA ; 
 int IDE_HFLAG_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct ide_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct ide_host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC4 (scalar_t__) ; 

void FUNC5(struct pci_dev *dev)
{
	struct ide_host *host = FUNC2(dev);
	struct pci_dev *dev2 = host->dev[1] ? FUNC4(host->dev[1]) : NULL;
	int bars;

	if (host->host_flags & IDE_HFLAG_SINGLE)
		bars = (1 << 2) - 1;
	else
		bars = (1 << 4) - 1;

	if ((host->host_flags & IDE_HFLAG_NO_DMA) == 0) {
		if (host->host_flags & IDE_HFLAG_CS5520)
			bars |= (1 << 2);
		else
			bars |= (1 << 4);
	}

	FUNC0(host);

	if (dev2)
		FUNC3(dev2, bars);
	FUNC3(dev, bars);

	if (dev2)
		FUNC1(dev2);
	FUNC1(dev);
}