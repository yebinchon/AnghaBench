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
typedef  int /*<<< orphan*/  u8 ;
struct wl1271_command {int dummy; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TESTMODE ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WL1271_TM_ATTR_DATA ; 
 size_t WL1271_TM_ATTR_IE_ID ; 
 scalar_t__ WLCORE_STATE_ON ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271_command*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct wl1271_command* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int,struct wl1271_command*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_command*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*) ; 
 int FUNC13 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 

__attribute__((used)) static int FUNC15(struct wl1271 *wl, struct nlattr *tb[])
{
	int ret;
	struct wl1271_command *cmd;
	struct sk_buff *skb;
	u8 ie_id;

	FUNC11(DEBUG_TESTMODE, "testmode cmd interrogate");

	if (!tb[WL1271_TM_ATTR_IE_ID])
		return -EINVAL;

	ie_id = FUNC7(tb[WL1271_TM_ATTR_IE_ID]);

	FUNC5(&wl->mutex);

	if (FUNC9(wl->state != WLCORE_STATE_ON)) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC13(wl);
	if (ret < 0)
		goto out;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out_sleep;
	}

	ret = FUNC10(wl, ie_id, cmd, sizeof(*cmd));
	if (ret < 0) {
		FUNC14("testmode cmd interrogate failed: %d", ret);
		goto out_free;
	}

	skb = FUNC0(wl->hw->wiphy, sizeof(*cmd));
	if (!skb) {
		ret = -ENOMEM;
		goto out_free;
	}

	if (FUNC8(skb, WL1271_TM_ATTR_DATA, sizeof(*cmd), cmd)) {
		FUNC3(skb);
		ret = -EMSGSIZE;
		goto out_free;
	}

	ret = FUNC1(skb);
	if (ret < 0)
		goto out_free;

out_free:
	FUNC2(cmd);
out_sleep:
	FUNC12(wl);
out:
	FUNC6(&wl->mutex);

	return ret;
}