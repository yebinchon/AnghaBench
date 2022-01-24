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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nes_cm_node {int /*<<< orphan*/  state; } ;
struct ietf_mpa_v1 {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IETF_MPA_FLAGS_REJECT ; 
 int /*<<< orphan*/  MAX_CM_BUFFER ; 
 int /*<<< orphan*/  MPA_KEY_REPLY ; 
 int /*<<< orphan*/  NES_CM_STATE_FIN_WAIT1 ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  NES_TIMER_TYPE_SEND ; 
 int SET_ACK ; 
 int SET_FIN ; 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nes_cm_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct nes_cm_node*,struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nes_cm_node *cm_node)
{
	struct sk_buff *skb = NULL;
	u8 start_addr = 0;
	u8 *start_ptr = &start_addr;
	u8 **start_buff = &start_ptr;
	u16 buff_len = 0;
	struct ietf_mpa_v1 *mpa_frame;

	skb = FUNC1(MAX_CM_BUFFER);
	if (!skb) {
		FUNC3(NES_DBG_CM, "Failed to get a Free pkt\n");
		return -ENOMEM;
	}

	/* send an MPA reject frame */
	FUNC0(cm_node, start_buff, &buff_len, NULL, MPA_KEY_REPLY);
	mpa_frame = (struct ietf_mpa_v1 *)*start_buff;
	mpa_frame->flags |= IETF_MPA_FLAGS_REJECT;
	FUNC2(skb, cm_node, NULL, 0, *start_buff, buff_len, SET_ACK | SET_FIN);

	cm_node->state = NES_CM_STATE_FIN_WAIT1;
	return FUNC4(cm_node, skb, NES_TIMER_TYPE_SEND, 1, 0);
}