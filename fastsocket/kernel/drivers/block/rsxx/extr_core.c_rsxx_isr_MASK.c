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
struct TYPE_4__ {int /*<<< orphan*/  done_work; int /*<<< orphan*/  creg_wq; } ;
struct rsxx_cardinfo {unsigned int isr_mask; int n_targets; int ier_mask; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  event_work; int /*<<< orphan*/  event_wq; TYPE_2__ creg_ctrl; TYPE_1__* ctrl; scalar_t__ regmap; int /*<<< orphan*/  eeh_state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  dma_done_work; int /*<<< orphan*/  done_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 unsigned int CR_INTR_CREG ; 
 int FUNC1 (int) ; 
 unsigned int CR_INTR_EVENT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ ISR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rsxx_cardinfo*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rsxx_cardinfo*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *pdata)
{
	struct rsxx_cardinfo *card = pdata;
	unsigned int isr;
	int handled = 0;
	int reread_isr;
	int i;

	FUNC7(&card->irq_lock);

	do {
		reread_isr = 0;

		if (FUNC9(card->eeh_state))
			break;

		isr = FUNC3(card->regmap + ISR);
		if (isr == 0xffffffff) {
			/*
			 * A few systems seem to have an intermittent issue
			 * where PCI reads return all Fs, but retrying the read
			 * a little later will return as expected.
			 */
			FUNC2(FUNC0(card),
				"ISR = 0xFFFFFFFF, retrying later\n");
			break;
		}

		isr &= card->isr_mask;
		if (!isr)
			break;

		for (i = 0; i < card->n_targets; i++) {
			if (isr & FUNC1(i)) {
				if (card->ier_mask & FUNC1(i)) {
					FUNC5(card, FUNC1(i));
					reread_isr = 1;
				}
				FUNC4(card->ctrl[i].done_wq,
					   &card->ctrl[i].dma_done_work);
				handled++;
			}
		}

		if (isr & CR_INTR_CREG) {
			FUNC4(card->creg_ctrl.creg_wq,
				   &card->creg_ctrl.done_work);
			handled++;
		}

		if (isr & CR_INTR_EVENT) {
			FUNC4(card->event_wq, &card->event_work);
			FUNC6(card, CR_INTR_EVENT);
			handled++;
		}
	} while (reread_isr);

	FUNC8(&card->irq_lock);

	return handled ? IRQ_HANDLED : IRQ_NONE;
}