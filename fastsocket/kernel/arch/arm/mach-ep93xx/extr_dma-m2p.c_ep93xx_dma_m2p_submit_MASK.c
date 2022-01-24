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
typedef  int /*<<< orphan*/  u32 ;
struct m2p_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffers_pending; struct ep93xx_dma_buffer* buffer_next; struct ep93xx_dma_buffer* buffer_xfer; scalar_t__ base; } ;
struct ep93xx_dma_m2p_client {int /*<<< orphan*/  cookie; int /*<<< orphan*/  (* buffer_started ) (int /*<<< orphan*/ ,struct ep93xx_dma_buffer*) ;struct m2p_channel* channel; } ;
struct ep93xx_dma_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ M2P_CONTROL ; 
 int /*<<< orphan*/  M2P_CONTROL_NFB_IRQ_EN ; 
 int /*<<< orphan*/  M2P_CONTROL_STALL_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (struct m2p_channel*,struct ep93xx_dma_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct m2p_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ep93xx_dma_buffer*) ; 

void FUNC7(struct ep93xx_dma_m2p_client *cl,
			   struct ep93xx_dma_buffer *buf)
{
	struct m2p_channel *ch = cl->channel;
	unsigned long flags;
	u32 v;

	FUNC4(&ch->lock, flags);
	v = FUNC3(ch->base + M2P_CONTROL);
	if (ch->buffer_xfer == NULL) {
		ch->buffer_xfer = buf;
		FUNC0(ch, buf);
		cl->buffer_started(cl->cookie, buf);

		v |= M2P_CONTROL_STALL_IRQ_EN;
		FUNC2(ch, v);

	} else if (ch->buffer_next == NULL) {
		ch->buffer_next = buf;
		FUNC0(ch, buf);

		v |= M2P_CONTROL_NFB_IRQ_EN;
		FUNC2(ch, v);
	} else {
		FUNC1(&buf->list, &ch->buffers_pending);
	}
	FUNC5(&ch->lock, flags);
}