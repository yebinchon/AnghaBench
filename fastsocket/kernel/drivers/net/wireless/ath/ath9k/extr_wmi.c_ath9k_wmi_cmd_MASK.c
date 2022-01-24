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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct wmi_cmd_hdr {int dummy; } ;
struct wmi {int last_cmd_id; int /*<<< orphan*/  op_mutex; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  wmi_lock; scalar_t__ cmd_rsp_len; int /*<<< orphan*/ * cmd_rsp_buf; int /*<<< orphan*/  stopped; TYPE_1__* drv_priv; } ;
struct sk_buff {int dummy; } ;
struct htc_frame_hdr {int dummy; } ;
struct ath_hw {int ah_flags; } ;
struct ath_common {int dummy; } ;
typedef  enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;
struct TYPE_2__ {struct ath_hw* ah; } ;

/* Variables and functions */
 int AH_UNPLUGGED ; 
 int ENOMEM ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  WMI ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int FUNC2 (struct wmi*,struct sk_buff*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(struct wmi *wmi, enum wmi_cmd_id cmd_id,
		  u8 *cmd_buf, u32 cmd_len,
		  u8 *rsp_buf, u32 rsp_len,
		  u32 timeout)
{
	struct ath_hw *ah = wmi->drv_priv->ah;
	struct ath_common *common = FUNC1(ah);
	u16 headroom = sizeof(struct htc_frame_hdr) +
		       sizeof(struct wmi_cmd_hdr);
	struct sk_buff *skb;
	u8 *data;
	int time_left, ret = 0;
	unsigned long flags;

	if (ah->ah_flags & AH_UNPLUGGED)
		return 0;

	skb = FUNC0(headroom + cmd_len, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	FUNC9(skb, headroom);

	if (cmd_len != 0 && cmd_buf != NULL) {
		data = (u8 *) FUNC8(skb, cmd_len);
		FUNC5(data, cmd_buf, cmd_len);
	}

	FUNC6(&wmi->op_mutex);

	/* check if wmi stopped flag is set */
	if (FUNC12(wmi->stopped)) {
		ret = -EPROTO;
		goto out;
	}

	/* record the rsp buffer and length */
	wmi->cmd_rsp_buf = rsp_buf;
	wmi->cmd_rsp_len = rsp_len;

	FUNC10(&wmi->wmi_lock, flags);
	wmi->last_cmd_id = cmd_id;
	FUNC11(&wmi->wmi_lock, flags);

	ret = FUNC2(wmi, skb, cmd_id, cmd_len);
	if (ret)
		goto out;

	time_left = FUNC13(&wmi->cmd_wait, timeout);
	if (!time_left) {
		FUNC3(common, WMI, "Timeout waiting for WMI command: %s\n",
			FUNC14(cmd_id));
		FUNC7(&wmi->op_mutex);
		return -ETIMEDOUT;
	}

	FUNC7(&wmi->op_mutex);

	return 0;

out:
	FUNC3(common, WMI, "WMI failure for: %s\n", FUNC14(cmd_id));
	FUNC7(&wmi->op_mutex);
	FUNC4(skb);

	return ret;
}