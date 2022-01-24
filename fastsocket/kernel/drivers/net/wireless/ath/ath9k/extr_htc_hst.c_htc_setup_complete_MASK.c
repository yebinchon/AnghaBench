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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct htc_target {int /*<<< orphan*/  dev; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  htc_flags; } ;
struct htc_frame_hdr {int dummy; } ;
struct htc_comp_msg {int /*<<< orphan*/  msg_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENDPOINT0 ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HTC_MSG_SETUP_COMPLETE_ID ; 
 int /*<<< orphan*/  HTC_OP_START_WAIT ; 
 int /*<<< orphan*/  HZ ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct htc_target*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct htc_target *target)
{
	struct sk_buff *skb;
	struct htc_comp_msg *comp_msg;
	int ret = 0, time_left;

	skb = FUNC0(50 + sizeof(struct htc_frame_hdr), GFP_ATOMIC);
	if (!skb) {
		FUNC2(target->dev, "failed to allocate send buffer\n");
		return -ENOMEM;
	}
	FUNC6(skb, sizeof(struct htc_frame_hdr));

	comp_msg = (struct htc_comp_msg *)
		FUNC5(skb, sizeof(struct htc_comp_msg));
	comp_msg->msg_id = FUNC1(HTC_MSG_SETUP_COMPLETE_ID);

	target->htc_flags |= HTC_OP_START_WAIT;

	ret = FUNC3(target, skb, skb->len, 0, ENDPOINT0);
	if (ret)
		goto err;

	time_left = FUNC7(&target->cmd_wait, HZ);
	if (!time_left) {
		FUNC2(target->dev, "HTC start timeout\n");
		return -ETIMEDOUT;
	}

	return 0;

err:
	FUNC4(skb);
	return -EINVAL;
}