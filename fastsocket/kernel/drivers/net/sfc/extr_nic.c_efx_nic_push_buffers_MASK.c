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
struct efx_tx_queue {unsigned int write_count; unsigned int insert_count; unsigned int ptr_mask; int /*<<< orphan*/  pushes; struct efx_tx_buffer* buffer; } ;
struct efx_tx_buffer {int flags; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFX_TX_BUF_CONT ; 
 int /*<<< orphan*/  FSF_AZ_TX_KER_BUF_ADDR ; 
 int /*<<< orphan*/  FSF_AZ_TX_KER_BUF_REGION ; 
 int /*<<< orphan*/  FSF_AZ_TX_KER_BYTE_COUNT ; 
 int /*<<< orphan*/  FSF_AZ_TX_KER_CONT ; 
 scalar_t__ FUNC3 (struct efx_tx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_tx_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct efx_tx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct efx_tx_queue *tx_queue)
{

	struct efx_tx_buffer *buffer;
	efx_qword_t *txd;
	unsigned write_ptr;
	unsigned old_write_count = tx_queue->write_count;

	FUNC0(tx_queue->write_count == tx_queue->insert_count);

	do {
		write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
		buffer = &tx_queue->buffer[write_ptr];
		txd = FUNC6(tx_queue, write_ptr);
		++tx_queue->write_count;

		/* Create TX descriptor ring entry */
		FUNC1(EFX_TX_BUF_CONT != 1);
		FUNC2(*txd,
				     FSF_AZ_TX_KER_CONT,
				     buffer->flags & EFX_TX_BUF_CONT,
				     FSF_AZ_TX_KER_BYTE_COUNT, buffer->len,
				     FSF_AZ_TX_KER_BUF_REGION, 0,
				     FSF_AZ_TX_KER_BUF_ADDR, buffer->dma_addr);
	} while (tx_queue->write_count != tx_queue->insert_count);

	FUNC7(); /* Ensure descriptors are written before they are fetched */

	if (FUNC3(tx_queue, old_write_count)) {
		txd = FUNC6(tx_queue,
				  old_write_count & tx_queue->ptr_mask);
		FUNC5(tx_queue, txd);
		++tx_queue->pushes;
	} else {
		FUNC4(tx_queue);
	}
}