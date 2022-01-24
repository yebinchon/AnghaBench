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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct s6gmac {int /*<<< orphan*/  io; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  rx_dma; scalar_t__ rx_skb_i; struct sk_buff** rx_skb; scalar_t__ rx_skb_o; } ;

/* Variables and functions */
 scalar_t__ S6_MAX_FRLEN ; 
 size_t S6_NUM_RX_SKB ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct s6gmac *pd)
{
	struct sk_buff *skb;
	while ((((u8)(pd->rx_skb_i - pd->rx_skb_o)) < S6_NUM_RX_SKB)
			&& (!FUNC1(pd->rx_dma, pd->rx_chan))
			&& (skb = FUNC0(S6_MAX_FRLEN + 2))) {
		pd->rx_skb[(pd->rx_skb_i++) % S6_NUM_RX_SKB] = skb;
		FUNC2(pd->rx_dma, pd->rx_chan,
			pd->io, (u32)skb->data, S6_MAX_FRLEN);
	}
}