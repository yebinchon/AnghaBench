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
typedef  union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct sk_buff {int len; } ;
struct igb_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct igb_ring *rx_ring,
				union e1000_adv_rx_desc *rx_desc,
				struct sk_buff *skb)
{

	/* place header in linear portion of buffer */
	if (FUNC2(skb))
		FUNC1(rx_ring, rx_desc, skb);

	/* if skb_pad returns an error the skb was freed */
	if (FUNC4(skb->len < 60)) {
		int pad_len = 60 - skb->len;

		if (FUNC3(skb, pad_len))
			return true;
		FUNC0(skb, pad_len);
	}

	return false;
}