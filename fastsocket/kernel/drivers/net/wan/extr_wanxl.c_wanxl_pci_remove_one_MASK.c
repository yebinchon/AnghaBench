#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_11__ {int n_ports; int /*<<< orphan*/  status_address; TYPE_6__* status; scalar_t__ plx; scalar_t__* rx_skbs; int /*<<< orphan*/  pdev; scalar_t__ irq; TYPE_1__* ports; } ;
typedef  TYPE_3__ card_t ;
typedef  int /*<<< orphan*/  card_status_t ;
struct TYPE_12__ {TYPE_2__* rx_descs; } ;
struct TYPE_10__ {int /*<<< orphan*/  address; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LENGTH ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_QUEUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	card_t *card = FUNC7(pdev);
	int i;

	for (i = 0; i < card->n_ports; i++) {
		FUNC11(card->ports[i].dev);
		FUNC2(card->ports[i].dev);
	}

	/* unregister and free all host resources */
	if (card->irq)
		FUNC1(card->irq, card);

	FUNC12(card);

	for (i = 0; i < RX_QUEUE_LENGTH; i++)
		if (card->rx_skbs[i]) {
			FUNC10(card->pdev,
					 card->status->rx_descs[i].address,
					 BUFFER_LENGTH, PCI_DMA_FROMDEVICE);
			FUNC0(card->rx_skbs[i]);
		}

	if (card->plx)
		FUNC3(card->plx);

	if (card->status)
		FUNC6(pdev, sizeof(card_status_t),
				    card->status, card->status_address);

	FUNC8(pdev);
	FUNC5(pdev);
	FUNC9(pdev, NULL);
	FUNC4(card);
}