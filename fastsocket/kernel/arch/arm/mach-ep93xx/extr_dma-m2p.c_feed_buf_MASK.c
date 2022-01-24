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
struct m2p_channel {int next_slot; scalar_t__ base; } ;
struct ep93xx_dma_buffer {int /*<<< orphan*/  bus_addr; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ M2P_BASE0 ; 
 scalar_t__ M2P_BASE1 ; 
 scalar_t__ M2P_MAXCNT0 ; 
 scalar_t__ M2P_MAXCNT1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct m2p_channel *ch, struct ep93xx_dma_buffer *buf)
{
	if (ch->next_slot == 0) {
		FUNC0(buf->size, ch->base + M2P_MAXCNT0);
		FUNC0(buf->bus_addr, ch->base + M2P_BASE0);
	} else {
		FUNC0(buf->size, ch->base + M2P_MAXCNT1);
		FUNC0(buf->bus_addr, ch->base + M2P_BASE1);
	}
	ch->next_slot ^= 1;
}