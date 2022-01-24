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
struct e1000_tx_desc {int dummy; } ;
struct e1000_ring {int count; int size; int /*<<< orphan*/  buffer_info; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct e1000_adapter* adapter; } ;
struct e1000_buffer {int dummy; } ;
struct e1000_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int FUNC1 (struct e1000_adapter*,struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct e1000_ring *tx_ring)
{
	struct e1000_adapter *adapter = tx_ring->adapter;
	int err = -ENOMEM, size;

	size = sizeof(struct e1000_buffer) * tx_ring->count;
	tx_ring->buffer_info = FUNC4(size);
	if (!tx_ring->buffer_info)
		goto err;

	/* round up to nearest 4K */
	tx_ring->size = tx_ring->count * sizeof(struct e1000_tx_desc);
	tx_ring->size = FUNC0(tx_ring->size, 4096);

	err = FUNC1(adapter, tx_ring);
	if (err)
		goto err;

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

	return 0;
err:
	FUNC3(tx_ring->buffer_info);
	FUNC2("Unable to allocate memory for the transmit descriptor ring\n");
	return err;
}