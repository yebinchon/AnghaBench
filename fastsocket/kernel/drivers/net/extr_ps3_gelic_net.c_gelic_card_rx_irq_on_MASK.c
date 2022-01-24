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
struct gelic_card {int /*<<< orphan*/  irq_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  GELIC_CARD_RXINT ; 
 int /*<<< orphan*/  FUNC0 (struct gelic_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct gelic_card *card)
{
	card->irq_mask |= GELIC_CARD_RXINT;
	FUNC0(card, card->irq_mask);
}