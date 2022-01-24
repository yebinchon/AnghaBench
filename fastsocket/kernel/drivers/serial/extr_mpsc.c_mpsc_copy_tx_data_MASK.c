#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; scalar_t__ x_char; TYPE_1__* state; } ;
struct mpsc_port_info {int txr_head; scalar_t__ cache_mgmt; TYPE_2__ port; scalar_t__* txb; int /*<<< orphan*/  txr_tail; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int MPSC_TXBE_SIZE ; 
 int MPSC_TXR_ENTRIES ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mpsc_port_info*,int,int) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC11(struct mpsc_port_info *pi)
{
	struct circ_buf *xmit = &pi->port.state->xmit;
	u8 *bp;
	u32 i;

	/* Make sure the desc ring isn't full */
	while (FUNC0(pi->txr_head, pi->txr_tail, MPSC_TXR_ENTRIES)
			< (MPSC_TXR_ENTRIES - 1)) {
		if (pi->port.x_char) {
			/*
			 * Ideally, we should use the TCS field in
			 * CHR_1 to put the x_char out immediately but
			 * errata prevents us from being able to read
			 * CHR_2 to know that its safe to write to
			 * CHR_1.  Instead, just put it in-band with
			 * all the other Tx data.
			 */
			bp = pi->txb + (pi->txr_head * MPSC_TXBE_SIZE);
			*bp = pi->port.x_char;
			pi->port.x_char = 0;
			i = 1;
		} else if (!FUNC8(xmit)
				&& !FUNC9(&pi->port)) {
			i = FUNC5((u32)MPSC_TXBE_SIZE,
				(u32)FUNC7(xmit));
			i = FUNC5(i, (u32)FUNC1(xmit->head, xmit->tail,
				UART_XMIT_SIZE));
			bp = pi->txb + (pi->txr_head * MPSC_TXBE_SIZE);
			FUNC4(bp, &xmit->buf[xmit->tail], i);
			xmit->tail = (xmit->tail + i) & (UART_XMIT_SIZE - 1);

			if (FUNC7(xmit) < WAKEUP_CHARS)
				FUNC10(&pi->port);
		} else { /* All tx data copied into ring bufs */
			return;
		}

		FUNC2(pi->port.dev, (void *)bp, MPSC_TXBE_SIZE,
				DMA_BIDIRECTIONAL);
#if defined(CONFIG_PPC32) && !defined(CONFIG_NOT_COHERENT_CACHE)
		if (pi->cache_mgmt) /* GT642[46]0 Res #COMM-2 */
			flush_dcache_range((ulong)bp,
					(ulong)bp + MPSC_TXBE_SIZE);
#endif
		FUNC6(pi, i, 1);

		/* Advance to next descriptor */
		pi->txr_head = (pi->txr_head + 1) & (MPSC_TXR_ENTRIES - 1);
	}
}