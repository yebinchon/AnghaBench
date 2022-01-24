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
typedef  int u32 ;
struct m2p_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/ * buffer_next; int /*<<< orphan*/ * buffer_xfer; scalar_t__ base; struct ep93xx_dma_m2p_client* client; } ;
struct ep93xx_dma_m2p_client {int /*<<< orphan*/  cookie; int /*<<< orphan*/  (* buffer_started ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* buffer_finished ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ M2P_CONTROL ; 
 int M2P_CONTROL_NFB_IRQ_EN ; 
 int M2P_CONTROL_STALL_IRQ_EN ; 
 scalar_t__ M2P_INTERRUPT ; 
 int M2P_INTERRUPT_ERROR ; 
 int M2P_INTERRUPT_NFB ; 
 int M2P_INTERRUPT_STALL ; 
#define  STATE_IDLE 131 
#define  STATE_NEXT 130 
#define  STATE_ON 129 
#define  STATE_STALL 128 
 int /*<<< orphan*/  FUNC1 (struct m2p_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct m2p_channel*) ; 
 int FUNC3 (struct m2p_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct m2p_channel*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_id)
{
	struct m2p_channel *ch = dev_id;
	struct ep93xx_dma_m2p_client *cl;
	u32 irq_status, v;
	int error = 0;

	cl = ch->client;

	FUNC7(&ch->lock);
	irq_status = FUNC6(ch->base + M2P_INTERRUPT);

	if (irq_status & M2P_INTERRUPT_ERROR) {
		FUNC14(M2P_INTERRUPT_ERROR, ch->base + M2P_INTERRUPT);
		error = 1;
	}

	if ((irq_status & (M2P_INTERRUPT_STALL | M2P_INTERRUPT_NFB)) == 0) {
		FUNC8(&ch->lock);
		return IRQ_NONE;
	}

	switch (FUNC3(ch)) {
	case STATE_IDLE:
		FUNC5("m2p_irq: dma interrupt without a dma buffer\n");
		FUNC0();
		break;

	case STATE_STALL:
		cl->buffer_finished(cl->cookie, ch->buffer_xfer, 0, error);
		if (ch->buffer_next != NULL) {
			cl->buffer_finished(cl->cookie, ch->buffer_next,
					    0, error);
		}
		FUNC2(ch);
		FUNC1(ch);
		if (ch->buffer_xfer != NULL)
			cl->buffer_started(cl->cookie, ch->buffer_xfer);
		break;

	case STATE_ON:
		cl->buffer_finished(cl->cookie, ch->buffer_xfer, 0, error);
		ch->buffer_xfer = ch->buffer_next;
		FUNC1(ch);
		cl->buffer_started(cl->cookie, ch->buffer_xfer);
		break;

	case STATE_NEXT:
		FUNC5("m2p_irq: dma interrupt while next\n");
		FUNC0();
		break;
	}

	v = FUNC6(ch->base + M2P_CONTROL) & ~(M2P_CONTROL_STALL_IRQ_EN |
					      M2P_CONTROL_NFB_IRQ_EN);
	if (ch->buffer_xfer != NULL)
		v |= M2P_CONTROL_STALL_IRQ_EN;
	if (ch->buffer_next != NULL)
		v |= M2P_CONTROL_NFB_IRQ_EN;
	FUNC4(ch, v);

	FUNC8(&ch->lock);
	return IRQ_HANDLED;
}