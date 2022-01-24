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
struct solos_card {int tx_mask; int /*<<< orphan*/  tx_queue_lock; int /*<<< orphan*/ * tx_queue; } ;
struct sk_buff {int dummy; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {struct atm_vcc* vcc; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct solos_card*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct solos_card *card, int port, struct sk_buff *skb,
		       struct atm_vcc *vcc)
{
	int old_len;
	unsigned long flags;

	FUNC0(skb)->vcc = vcc;

	FUNC4(&card->tx_queue_lock, flags);
	old_len = FUNC2(&card->tx_queue[port]);
	FUNC3(&card->tx_queue[port], skb);
	if (!old_len)
		card->tx_mask |= (1 << port);
	FUNC5(&card->tx_queue_lock, flags);

	/* Theoretically we could just schedule the tasklet here, but
	   that introduces latency we don't want -- it's noticeable */
	if (!old_len)
		FUNC1(card);
}