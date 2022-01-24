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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct cas_tx_desc {int /*<<< orphan*/  control; int /*<<< orphan*/  buffer; } ;
struct cas {TYPE_2__** tx_tiny_use; int /*<<< orphan*/  pdev; struct sk_buff*** tx_skbs; struct cas_tx_desc** init_txds; } ;
struct TYPE_4__ {scalar_t__ used; } ;
struct TYPE_3__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  TX_DESC_BUFLEN ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct cas *cp, int ring)
{
	struct cas_tx_desc *txd = cp->init_txds[ring];
	struct sk_buff *skb, **skbs = cp->tx_skbs[ring];
	u64 daddr, dlen;
	int i, size;

	size = FUNC1(ring);
	for (i = 0; i < size; i++) {
		int frag;

		if (skbs[i] == NULL)
			continue;

		skb = skbs[i];
		skbs[i] = NULL;

		for (frag = 0; frag <= FUNC6(skb)->nr_frags;  frag++) {
			int ent = i & (size - 1);

			/* first buffer is never a tiny buffer and so
			 * needs to be unmapped.
			 */
			daddr = FUNC3(txd[ent].buffer);
			dlen  =  FUNC0(TX_DESC_BUFLEN,
					 FUNC3(txd[ent].control));
			FUNC5(cp->pdev, daddr, dlen,
				       PCI_DMA_TODEVICE);

			if (frag != FUNC6(skb)->nr_frags) {
				i++;

				/* next buffer might by a tiny buffer.
				 * skip past it.
				 */
				ent = i & (size - 1);
				if (cp->tx_tiny_use[ring][ent].used)
					i++;
			}
		}
		FUNC2(skb);
	}

	/* zero out tiny buf usage */
	FUNC4(cp->tx_tiny_use[ring], 0, size*sizeof(*cp->tx_tiny_use[ring]));
}