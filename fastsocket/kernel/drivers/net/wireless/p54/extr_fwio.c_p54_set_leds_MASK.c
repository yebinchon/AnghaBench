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
struct p54_led {void** delay; void** mask; void* flags; } ;
struct p54_common {int softled_state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P54_CONTROL_TYPE_LED ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p54_common*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct p54_common *priv)
{
	struct sk_buff *skb;
	struct p54_led *led;

	skb = FUNC1(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*led),
			    P54_CONTROL_TYPE_LED, GFP_ATOMIC);
	if (FUNC4(!skb))
		return -ENOMEM;

	led = (struct p54_led *) FUNC3(skb, sizeof(*led));
	led->flags = FUNC0(0x0003);
	led->mask[0] = led->mask[1] = FUNC0(priv->softled_state);
	led->delay[0] = FUNC0(1);
	led->delay[1] = FUNC0(0);
	FUNC2(priv, skb);
	return 0;
}