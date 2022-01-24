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
struct m2p_channel {scalar_t__ base; int /*<<< orphan*/  clk; struct ep93xx_dma_m2p_client* client; } ;
struct ep93xx_dma_m2p_client {int flags; } ;

/* Variables and functions */
 int EP93XX_DMA_M2P_ERROR_MASK ; 
 int EP93XX_DMA_M2P_PORT_MASK ; 
 int M2P_CONTROL_ENABLE ; 
 int M2P_CONTROL_ERROR_IRQ_EN ; 
 scalar_t__ M2P_PPALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m2p_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct m2p_channel *ch)
{
	struct ep93xx_dma_m2p_client *cl = ch->client;
	u32 v;

	FUNC0(ch->clk);

	v = cl->flags & EP93XX_DMA_M2P_PORT_MASK;
	FUNC2(v, ch->base + M2P_PPALLOC);

	v = cl->flags & EP93XX_DMA_M2P_ERROR_MASK;
	v |= M2P_CONTROL_ENABLE | M2P_CONTROL_ERROR_IRQ_EN;
	FUNC1(ch, v);
}