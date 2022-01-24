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
struct pci_host_bridge {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pci_bus {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 struct pci_bus* FUNC0 (struct pci_dev*) ; 
 struct pci_host_bridge* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pci_host_bridge *FUNC2(struct pci_dev *dev)
{
	struct pci_bus *bus = FUNC0(dev);

	return FUNC1(bus->bridge);
}