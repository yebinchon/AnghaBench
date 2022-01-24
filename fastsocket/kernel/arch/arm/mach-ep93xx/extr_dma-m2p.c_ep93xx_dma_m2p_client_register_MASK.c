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
struct m2p_channel {int /*<<< orphan*/  buffers_pending; int /*<<< orphan*/ * buffer_next; int /*<<< orphan*/ * buffer_xfer; scalar_t__ next_slot; struct ep93xx_dma_m2p_client* client; int /*<<< orphan*/  irq; } ;
struct ep93xx_dma_m2p_client {struct m2p_channel* channel; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct m2p_channel*) ; 
 int FUNC2 (struct m2p_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct m2p_channel*) ; 
 struct m2p_channel* FUNC4 (struct ep93xx_dma_m2p_client*) ; 
 int /*<<< orphan*/  m2p_irq ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct m2p_channel*) ; 

int FUNC6(struct ep93xx_dma_m2p_client *cl)
{
	struct m2p_channel *ch;
	int err;

	ch = FUNC4(cl);
	if (FUNC1(ch))
		return FUNC2(ch);

	err = FUNC5(ch->irq, m2p_irq, 0, cl->name ? : "dma-m2p", ch);
	if (err)
		return err;

	ch->client = cl;
	ch->next_slot = 0;
	ch->buffer_xfer = NULL;
	ch->buffer_next = NULL;
	FUNC0(&ch->buffers_pending);

	cl->channel = ch;

	FUNC3(ch);

	return 0;
}