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
struct nes_cm_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_CM_BUFFER ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  NES_TIMER_TYPE_SEND ; 
 int /*<<< orphan*/  SET_ACK ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nes_cm_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct nes_cm_node*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nes_cm_node *cm_node, struct sk_buff *skb)
{
	int ret;

	if (!skb)
		skb = FUNC0(MAX_CM_BUFFER);

	if (!skb) {
		FUNC2(NES_DBG_CM, "Failed to get a Free pkt\n");
		return -1;
	}

	FUNC1(skb, cm_node, NULL, 0, NULL, 0, SET_ACK);
	ret = FUNC3(cm_node, skb, NES_TIMER_TYPE_SEND, 0, 0);

	return ret;
}