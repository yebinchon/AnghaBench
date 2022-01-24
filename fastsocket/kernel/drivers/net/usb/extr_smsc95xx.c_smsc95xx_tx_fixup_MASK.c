#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {scalar_t__ use_tx_csum; } ;
struct sk_buff {scalar_t__ ip_summed; int len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int SMSC95XX_TX_OVERHEAD ; 
 int SMSC95XX_TX_OVERHEAD_CSUM ; 
 int TX_CMD_A_FIRST_SEG_ ; 
 int TX_CMD_A_LAST_SEG_ ; 
 int TX_CMD_B_CSUM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct usbnet *dev,
					 struct sk_buff *skb, gfp_t flags)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	bool csum = pdata->use_tx_csum && (skb->ip_summed == CHECKSUM_PARTIAL);
	int overhead = csum ? SMSC95XX_TX_OVERHEAD_CSUM : SMSC95XX_TX_OVERHEAD;
	u32 tx_cmd_a, tx_cmd_b;

	/* We do not advertise SG, so skbs should be already linearized */
	FUNC0(FUNC7(skb)->nr_frags);

	if (FUNC5(skb) < overhead) {
		struct sk_buff *skb2 = FUNC4(skb,
			overhead, 0, flags);
		FUNC2(skb);
		skb = skb2;
		if (!skb)
			return NULL;
	}

	if (csum) {
		u32 csum_preamble = FUNC8(skb);
		FUNC6(skb, 4);
		FUNC3(skb->data, &csum_preamble, 4);
	}

	FUNC6(skb, 4);
	tx_cmd_b = (u32)(skb->len - 4);
	if (csum)
		tx_cmd_b |= TX_CMD_B_CSUM_ENABLE;
	FUNC1(&tx_cmd_b);
	FUNC3(skb->data, &tx_cmd_b, 4);

	FUNC6(skb, 4);
	tx_cmd_a = (u32)(skb->len - 8) | TX_CMD_A_FIRST_SEG_ |
		TX_CMD_A_LAST_SEG_;
	FUNC1(&tx_cmd_a);
	FUNC3(skb->data, &tx_cmd_a, 4);

	return skb;
}