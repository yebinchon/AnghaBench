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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct p54_sta_unlock {int /*<<< orphan*/  addr; } ;
struct p54_common {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P54_CONTROL_TYPE_PSM_STA_UNLOCK ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p54_common*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct p54_common *priv, u8 *addr)
{
	struct sk_buff *skb;
	struct p54_sta_unlock *sta;

	skb = FUNC1(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*sta),
			    P54_CONTROL_TYPE_PSM_STA_UNLOCK, GFP_ATOMIC);
	if (FUNC4(!skb))
		return -ENOMEM;

	sta = (struct p54_sta_unlock *)FUNC3(skb, sizeof(*sta));
	FUNC0(sta->addr, addr, ETH_ALEN);
	FUNC2(priv, skb);
	return 0;
}