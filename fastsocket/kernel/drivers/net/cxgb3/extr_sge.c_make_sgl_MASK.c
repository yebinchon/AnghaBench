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
struct sk_buff {int dummy; } ;
struct sg_ent {void** len; void** addr; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 void* FUNC0 (unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC5 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC6(const struct sk_buff *skb,
				    struct sg_ent *sgp, unsigned char *start,
				    unsigned int len, struct pci_dev *pdev)
{
	dma_addr_t mapping;
	unsigned int i, j = 0, nfrags;

	if (len) {
		mapping = FUNC2(pdev, start, len, PCI_DMA_TODEVICE);
		sgp->len[0] = FUNC0(len);
		sgp->addr[0] = FUNC1(mapping);
		j = 1;
	}

	nfrags = FUNC5(skb)->nr_frags;
	for (i = 0; i < nfrags; i++) {
		const skb_frag_t *frag = &FUNC5(skb)->frags[i];

		mapping = FUNC3(&pdev->dev, frag, 0, FUNC4(frag),
					   PCI_DMA_TODEVICE);
		sgp->len[j] = FUNC0(FUNC4(frag));
		sgp->addr[j] = FUNC1(mapping);
		j ^= 1;
		if (j == 0)
			++sgp;
	}
	if (j)
		sgp->len[j] = 0;
	return ((nfrags + (len != 0)) * 3) / 2 + j;
}