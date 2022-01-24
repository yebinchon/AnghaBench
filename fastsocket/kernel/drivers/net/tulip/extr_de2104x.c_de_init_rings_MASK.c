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
struct de_private {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_tail; TYPE_1__* tx_ring; } ;
struct de_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  opts2; } ;

/* Variables and functions */
 int DE_TX_RING_SIZE ; 
 int /*<<< orphan*/  RingEnd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3 (struct de_private *de)
{
	FUNC2(de->tx_ring, 0, sizeof(struct de_desc) * DE_TX_RING_SIZE);
	de->tx_ring[DE_TX_RING_SIZE - 1].opts2 = FUNC0(RingEnd);

	de->rx_tail = 0;
	de->tx_head = de->tx_tail = 0;

	return FUNC1 (de);
}