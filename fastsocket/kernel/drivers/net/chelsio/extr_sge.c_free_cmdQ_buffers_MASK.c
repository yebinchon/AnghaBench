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
struct sge {TYPE_1__* adapter; } ;
struct pci_dev {int dummy; } ;
struct cmdQ_ce {scalar_t__ skb; } ;
struct cmdQ {unsigned int cidx; unsigned int in_use; int sop; unsigned int size; struct cmdQ_ce* centries; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdQ_ce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdQ_ce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sge *sge, struct cmdQ *q, unsigned int n)
{
	struct cmdQ_ce *ce;
	struct pci_dev *pdev = sge->adapter->pdev;
	unsigned int cidx = q->cidx;

	q->in_use -= n;
	ce = &q->centries[cidx];
	while (n--) {
		if (FUNC1(FUNC3(ce, dma_len))) {
			FUNC4(pdev, FUNC2(ce, dma_addr),
					 FUNC3(ce, dma_len),
					 PCI_DMA_TODEVICE);
			if (q->sop)
				q->sop = 0;
		}
		if (ce->skb) {
			FUNC0(ce->skb);
			q->sop = 1;
		}
		ce++;
		if (++cidx == q->size) {
			cidx = 0;
			ce = q->centries;
		}
	}
	q->cidx = cidx;
}