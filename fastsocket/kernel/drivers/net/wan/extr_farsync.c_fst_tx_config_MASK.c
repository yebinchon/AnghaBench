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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct fst_port_info {int index; scalar_t__ start; scalar_t__ txipos; scalar_t__ txpos; struct fst_card_info* card; } ;
struct fst_card_info {int /*<<< orphan*/  card_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  bcnt; int /*<<< orphan*/  hadr; int /*<<< orphan*/  ladr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUM_TX_BUFFER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ *** txBuffer ; 
 TYPE_1__** txDescrRing ; 

__attribute__((used)) static void
FUNC5(struct fst_port_info *port)
{
	int i;
	int pi;
	unsigned int offset;
	unsigned long flags;
	struct fst_card_info *card;

	pi = port->index;
	card = port->card;
	FUNC3(&card->card_lock, flags);
	for (i = 0; i < NUM_TX_BUFFER; i++) {
		offset = FUNC0(txBuffer[pi][i][0]);

		FUNC2(card, txDescrRing[pi][i].ladr, (u16) offset);
		FUNC1(card, txDescrRing[pi][i].hadr, (u8) (offset >> 16));
		FUNC2(card, txDescrRing[pi][i].bcnt, 0);
		FUNC1(card, txDescrRing[pi][i].bits, 0);
	}
	port->txpos = 0;
	port->txipos = 0;
	port->start = 0;
	FUNC4(&card->card_lock, flags);
}