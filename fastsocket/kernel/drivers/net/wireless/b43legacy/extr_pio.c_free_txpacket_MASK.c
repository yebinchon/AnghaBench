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
struct b43legacy_pioqueue {int /*<<< orphan*/  nr_txfree; int /*<<< orphan*/  txfree; } ;
struct b43legacy_pio_txpacket {int /*<<< orphan*/  list; scalar_t__ skb; struct b43legacy_pioqueue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct b43legacy_pio_txpacket *packet,
			  int irq_context)
{
	struct b43legacy_pioqueue *queue = packet->queue;

	if (packet->skb) {
		if (irq_context)
			FUNC1(packet->skb);
		else
			FUNC0(packet->skb);
	}
	FUNC2(&packet->list, &queue->txfree);
	queue->nr_txfree++;
}