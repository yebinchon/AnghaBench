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
struct saa7146_pgtable {int /*<<< orphan*/ * slist; int /*<<< orphan*/  nents; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct saa7146_pgtable*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4(struct pci_dev *pci, void *mem, struct saa7146_pgtable *pt)
{
	FUNC1(pci, pt->slist, pt->nents, PCI_DMA_FROMDEVICE);
	FUNC2(pci, pt);
	FUNC0(pt->slist);
	pt->slist = NULL;
	FUNC3(mem);
}