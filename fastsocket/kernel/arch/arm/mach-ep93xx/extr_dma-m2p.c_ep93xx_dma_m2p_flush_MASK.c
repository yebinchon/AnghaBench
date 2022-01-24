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
struct m2p_channel {int /*<<< orphan*/  buffers_pending; int /*<<< orphan*/ * buffer_next; int /*<<< orphan*/ * buffer_xfer; scalar_t__ next_slot; } ;
struct ep93xx_dma_m2p_client {struct m2p_channel* channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct m2p_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct m2p_channel*) ; 

void FUNC3(struct ep93xx_dma_m2p_client *cl)
{
	struct m2p_channel *ch = cl->channel;

	FUNC1(ch);
	ch->next_slot = 0;
	ch->buffer_xfer = NULL;
	ch->buffer_next = NULL;
	FUNC0(&ch->buffers_pending);
	FUNC2(ch);
}