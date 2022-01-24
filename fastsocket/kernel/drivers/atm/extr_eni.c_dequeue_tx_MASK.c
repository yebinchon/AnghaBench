#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; } ;
struct eni_tx {scalar_t__ words; int /*<<< orphan*/  tx_wait; TYPE_1__* stats; int /*<<< orphan*/  (* pop ) (struct eni_tx*,struct sk_buff*) ;int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  index; } ;
struct eni_dev {scalar_t__ words; int /*<<< orphan*/  tx_wait; TYPE_1__* stats; int /*<<< orphan*/  (* pop ) (struct eni_tx*,struct sk_buff*) ;int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  index; } ;
struct atm_vcc {scalar_t__ words; int /*<<< orphan*/  tx_wait; TYPE_1__* stats; int /*<<< orphan*/  (* pop ) (struct eni_tx*,struct sk_buff*) ;int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  index; } ;
struct atm_dev {scalar_t__ words; int /*<<< orphan*/  tx_wait; TYPE_1__* stats; int /*<<< orphan*/  (* pop ) (struct eni_tx*,struct sk_buff*) ;int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  index; } ;
struct TYPE_6__ {struct eni_tx* vcc; } ;
struct TYPE_5__ {scalar_t__ txing; struct eni_tx* tx; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned int) ; 
 struct eni_tx* FUNC2 (struct eni_tx*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 TYPE_2__* FUNC6 (struct eni_tx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct eni_tx*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  dma_complete ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct eni_tx*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct atm_dev *dev)
{
	struct eni_dev *eni_dev;
	struct atm_vcc *vcc;
	struct sk_buff *skb;
	struct eni_tx *tx;

	FUNC8(dev);
	eni_dev = FUNC2(dev);
	FUNC8(eni_dev);
	while ((skb = FUNC13(&eni_dev->tx_queue))) {
		vcc = FUNC0(skb)->vcc;
		FUNC8(vcc);
		tx = FUNC6(vcc)->tx;
		FUNC8(FUNC6(vcc)->tx);
		FUNC1("dequeue_tx: next 0x%lx curr 0x%x\n",FUNC4(skb),
		    (unsigned) FUNC11(FUNC7(tx->index)));
		if (FUNC6(vcc)->txing < tx->words && FUNC4(skb) ==
		    FUNC11(FUNC7(tx->index))) {
			FUNC14(&eni_dev->tx_queue,skb);
			break;
		}
		FUNC6(vcc)->txing -= FUNC5(skb);
		FUNC12(eni_dev->pci_dev,FUNC3(skb),skb->len,
		    PCI_DMA_TODEVICE);
		if (vcc->pop) vcc->pop(vcc,skb);
		else FUNC10(skb);
		FUNC9(&vcc->stats->tx);
		FUNC16(&eni_dev->tx_wait);
dma_complete++;
	}
}