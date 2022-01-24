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
struct efx_rx_queue {int /*<<< orphan*/  efx; } ;
struct efx_rx_buffer {int flags; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int EFX_RX_BUF_LAST_IN_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct efx_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct efx_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct efx_rx_queue *rx_queue,
			       struct efx_rx_buffer *rx_buf)
{
	/* Release the page reference we hold for the buffer. */
	if (rx_buf->page)
		FUNC2(rx_buf->page);

	/* If this is the last buffer in a page, unmap and free it. */
	if (rx_buf->flags & EFX_RX_BUF_LAST_IN_PAGE) {
		FUNC1(rx_queue->efx, rx_buf);
		FUNC0(rx_buf);
	}
	rx_buf->page = NULL;
}