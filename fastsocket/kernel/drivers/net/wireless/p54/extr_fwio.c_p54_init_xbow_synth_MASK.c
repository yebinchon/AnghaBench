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
struct p54_xbow_synth {int /*<<< orphan*/  padding; void* freq; void* magic2; void* magic1; } ;
struct p54_common {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P54_CONTROL_TYPE_XBOW_SYNTH_CFG ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p54_common*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct p54_common *priv)
{
	struct sk_buff *skb;
	struct p54_xbow_synth *xbow;

	skb = FUNC2(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*xbow),
			    P54_CONTROL_TYPE_XBOW_SYNTH_CFG, GFP_KERNEL);
	if (FUNC5(!skb))
		return -ENOMEM;

	xbow = (struct p54_xbow_synth *)FUNC4(skb, sizeof(*xbow));
	xbow->magic1 = FUNC0(0x1);
	xbow->magic2 = FUNC0(0x2);
	xbow->freq = FUNC0(5390);
	FUNC1(xbow->padding, 0, sizeof(xbow->padding));
	FUNC3(priv, skb);
	return 0;
}