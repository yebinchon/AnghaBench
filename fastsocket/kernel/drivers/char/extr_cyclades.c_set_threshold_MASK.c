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
struct cyclades_port {unsigned long cor3; struct cyclades_card* card; } ;
struct cyclades_card {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CyCOR3 ; 
 int CyCOR3ch ; 
 int CyCOR_CHANGE ; 
 unsigned long CyREC_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct cyclades_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyclades_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cyclades_port*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct cyclades_port *info, unsigned long value)
{
	struct cyclades_card *card = info->card;
	unsigned long flags;

	if (!FUNC0(card)) {
		info->cor3 &= ~CyREC_FIFO;
		info->cor3 |= value & CyREC_FIFO;

		FUNC3(&card->card_lock, flags);
		FUNC2(info, CyCOR3, info->cor3);
		FUNC1(info, CyCOR_CHANGE | CyCOR3ch);
		FUNC4(&card->card_lock, flags);
	}
	return 0;
}