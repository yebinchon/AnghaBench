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
struct c2_tx_desc {scalar_t__ len; } ;
struct c2_element {int /*<<< orphan*/ * skb; int /*<<< orphan*/  maplen; int /*<<< orphan*/  mapaddr; struct c2_tx_desc* ht_desc; } ;
struct c2_dev {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct c2_dev *c2dev, struct c2_element *elem)
{
	struct c2_tx_desc *tx_desc = elem->ht_desc;

	tx_desc->len = 0;

	FUNC1(c2dev->pcidev, elem->mapaddr, elem->maplen,
			 PCI_DMA_TODEVICE);

	if (elem->skb) {
		FUNC0(elem->skb);
		elem->skb = NULL;
	}

	return 0;
}