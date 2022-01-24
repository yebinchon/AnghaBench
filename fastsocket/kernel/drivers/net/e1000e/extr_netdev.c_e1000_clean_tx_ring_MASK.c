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
struct e1000_ring {unsigned int count; unsigned long size; int /*<<< orphan*/  tail; TYPE_1__* adapter; int /*<<< orphan*/  head; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct e1000_buffer* desc; struct e1000_buffer* buffer_info; } ;
struct e1000_buffer {int dummy; } ;
struct TYPE_2__ {int flags2; } ;

/* Variables and functions */
 int FLAG2_PCIM2PCI_ARBITER_WA ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_ring*,struct e1000_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_buffer*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct e1000_ring *tx_ring)
{
	struct e1000_buffer *buffer_info;
	unsigned long size;
	unsigned int i;

	for (i = 0; i < tx_ring->count; i++) {
		buffer_info = &tx_ring->buffer_info[i];
		FUNC0(tx_ring, buffer_info);
	}

	size = sizeof(struct e1000_buffer) * tx_ring->count;
	FUNC2(tx_ring->buffer_info, 0, size);

	FUNC2(tx_ring->desc, 0, tx_ring->size);

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

	FUNC3(0, tx_ring->head);
	if (tx_ring->adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
		FUNC1(tx_ring, 0);
	else
		FUNC3(0, tx_ring->tail);
}