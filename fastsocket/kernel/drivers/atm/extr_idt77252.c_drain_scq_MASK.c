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
struct vc_map {struct scq_info* scq; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct scq_info {int /*<<< orphan*/  skblock; int /*<<< orphan*/  pending; int /*<<< orphan*/  used; int /*<<< orphan*/  transmit; int /*<<< orphan*/  next; } ;
struct idt77252_dev {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  name; } ;
struct atm_vcc {TYPE_1__* stats; int /*<<< orphan*/  (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_4__ {struct atm_vcc* vcc; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct sk_buff*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct idt77252_dev*,struct vc_map*,struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct atm_vcc*,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC14(struct idt77252_dev *card, struct vc_map *vc)
{
	struct scq_info *scq = vc->scq;
	struct sk_buff *skb;
	struct atm_vcc *vcc;

	FUNC2("%s: SCQ (before drain %2d) next = 0x%p.\n",
		 card->name, FUNC5(&scq->used), scq->next);

	skb = FUNC9(&scq->transmit);
	if (skb) {
		FUNC2("%s: freeing skb at %p.\n", card->name, skb);

		FUNC7(card->pcidev, FUNC1(skb),
				 skb->len, PCI_DMA_TODEVICE);

		vcc = FUNC0(skb)->vcc;

		if (vcc->pop)
			vcc->pop(vcc, skb);
		else
			FUNC6(skb);

		FUNC4(&vcc->stats->tx);
	}

	FUNC3(&scq->used);

	FUNC11(&scq->skblock);
	while ((skb = FUNC9(&scq->pending))) {
		if (FUNC8(card, vc, skb)) {
			FUNC10(&vc->scq->pending, skb);
			break;
		}
	}
	FUNC12(&scq->skblock);
}