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
struct sk_buff {int dummy; } ;
struct p54_common {int /*<<< orphan*/  hw; int /*<<< orphan*/  (* tx ) (int /*<<< orphan*/ ,struct sk_buff*) ;int /*<<< orphan*/  tx_pending; } ;

/* Variables and functions */
 int FUNC0 (struct p54_common*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct p54_common *priv)
{
	struct sk_buff *skb;
	int ret;

	skb = FUNC1(&priv->tx_pending);
	if (FUNC4(!skb))
		return ;

	ret = FUNC0(priv, skb);
	if (FUNC4(ret))
		FUNC2(&priv->tx_pending, skb);
	else
		priv->tx(priv->hw, skb);
}