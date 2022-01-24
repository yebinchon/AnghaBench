#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pasemi_mac {struct pci_dev* dma_pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {TYPE_1__* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct pasemi_mac *mac,
				    const int nfrags,
				    struct sk_buff *skb,
				    const dma_addr_t *dmas)
{
	int f;
	struct pci_dev *pdev = mac->dma_pdev;

	FUNC2(pdev, dmas[0], FUNC3(skb), PCI_DMA_TODEVICE);

	for (f = 0; f < nfrags; f++) {
		skb_frag_t *frag = &FUNC4(skb)->frags[f];

		FUNC1(pdev, dmas[f+1], frag->size, PCI_DMA_TODEVICE);
	}
	FUNC0(skb);

	/* Freed descriptor slot + main SKB ptr + nfrags additional ptrs,
	 * aligned up to a power of 2
	 */
	return (nfrags + 3) & ~1;
}