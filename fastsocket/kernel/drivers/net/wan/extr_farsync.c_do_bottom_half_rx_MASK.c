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
struct fst_port_info {size_t rxpos; int /*<<< orphan*/  run; } ;
struct fst_card_info {int nports; int /*<<< orphan*/  card_no; int /*<<< orphan*/  dmarx_in_progress; struct fst_port_info* ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_RX ; 
 int DMA_OWN ; 
 int FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fst_int_task ; 
 int /*<<< orphan*/  FUNC2 (struct fst_card_info*,struct fst_port_info*) ; 
 int fst_max_reads ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fst_work_intq ; 
 TYPE_1__** rxDescrRing ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct fst_card_info *card)
{
	struct fst_port_info *port;
	int pi;
	int rx_count = 0;

	/* Check for rx completions on all ports on this card */
	FUNC1(DBG_RX, "do_bottom_half_rx\n");
	for (pi = 0, port = card->ports; pi < card->nports; pi++, port++) {
		if (!port->run)
			continue;

		while (!(FUNC0(card, rxDescrRing[pi][port->rxpos].bits)
			 & DMA_OWN) && !(card->dmarx_in_progress)) {
			if (rx_count > fst_max_reads) {
				/*
				 * Don't spend forever in receive processing
				 * Schedule another event
				 */
				FUNC3(&fst_work_intq, card->card_no);
				FUNC4(&fst_int_task);
				break;	/* Leave the loop */
			}
			FUNC2(card, port);
			rx_count++;
		}
	}
}