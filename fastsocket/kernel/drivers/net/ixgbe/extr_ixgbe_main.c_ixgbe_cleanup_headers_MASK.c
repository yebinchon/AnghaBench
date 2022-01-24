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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int len; } ;
struct ixgbe_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_RXDADV_ERR_FRAME_ERR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_ring*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ; 
 int FUNC4 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct ixgbe_ring *rx_ring,
				  union ixgbe_adv_rx_desc *rx_desc,
				  struct sk_buff *skb)
{
	/* verify that the packet does not have any known errors */
	if (FUNC7(FUNC4(rx_desc,
					IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
		FUNC1(skb);
		return true;
	}

	/* place header in linear portion of buffer */
	if (FUNC5(skb))
		FUNC2(rx_ring, skb);

#ifdef IXGBE_FCOE
	/* do not attempt to pad FCoE Frames as this will disrupt DDP */
	if (ixgbe_rx_is_fcoe(rx_ring, rx_desc))
		return false;

#endif
	/* if skb_pad returns an error the skb was freed */
	if (FUNC7(skb->len < 60)) {
		int pad_len = 60 - skb->len;

		if (FUNC6(skb, pad_len))
			return true;
		FUNC0(skb, pad_len);
	}

	return false;
}