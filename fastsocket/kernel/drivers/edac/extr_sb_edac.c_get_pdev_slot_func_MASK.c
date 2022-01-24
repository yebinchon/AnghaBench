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
typedef  int /*<<< orphan*/  u8 ;
struct sbridge_dev {int n_devs; struct pci_dev** pdev; } ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct pci_dev*) ; 
 struct sbridge_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pci_dev *FUNC4(u8 bus, unsigned slot,
					  unsigned func)
{
	struct sbridge_dev *sbridge_dev = FUNC3(bus);
	int i;

	if (!sbridge_dev)
		return NULL;

	for (i = 0; i < sbridge_dev->n_devs; i++) {
		if (!sbridge_dev->pdev[i])
			continue;

		if (FUNC1(sbridge_dev->pdev[i]->devfn) == slot &&
		    FUNC0(sbridge_dev->pdev[i]->devfn) == func) {
			FUNC2("Associated %02x.%02x.%d with %p\n",
				bus, slot, func, sbridge_dev->pdev[i]);
			return sbridge_dev->pdev[i];
		}
	}

	return NULL;
}