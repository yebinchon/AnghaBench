#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {void* length; void* type; } ;
struct TYPE_3__ {void* version; void* length; void* type; } ;
struct i2400m_cmd_enter_power_save {int /*<<< orphan*/  val; TYPE_2__ tlv; TYPE_1__ hdr; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  strerr ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2400M_L3L4_VERSION ; 
 int I2400M_MT_CMD_ENTER_POWERSAVE ; 
 int I2400M_TLV_TYPE_WAKEUP_MODE ; 
 int /*<<< orphan*/  I2400M_WAKEUP_ENABLED ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,...) ; 
 struct device* FUNC6 (struct i2400m*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC8 (struct i2400m*,struct i2400m_cmd_enter_power_save*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m_cmd_enter_power_save*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct i2400m_cmd_enter_power_save* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

int FUNC13(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC6(i2400m);
	struct sk_buff *ack_skb;
	struct i2400m_cmd_enter_power_save *cmd;
	char strerr[32];

	result = -ENOMEM;
	cmd = FUNC11(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_alloc;
	cmd->hdr.type = FUNC2(I2400M_MT_CMD_ENTER_POWERSAVE);
	cmd->hdr.length = FUNC2(sizeof(*cmd) - sizeof(cmd->hdr));
	cmd->hdr.version = FUNC2(I2400M_L3L4_VERSION);
	cmd->tlv.type = FUNC2(I2400M_TLV_TYPE_WAKEUP_MODE);
	cmd->tlv.length = FUNC2(sizeof(cmd->val));
	cmd->val = FUNC3(I2400M_WAKEUP_ENABLED);

	ack_skb = FUNC8(i2400m, cmd, sizeof(*cmd));
	result = FUNC1(ack_skb);
	if (FUNC0(ack_skb)) {
		FUNC5(dev, "Failed to issue 'Enter power save' command: %d\n",
			result);
		goto error_msg_to_dev;
	}
	result = FUNC7(FUNC12(ack_skb),
					 strerr, sizeof(strerr));
	if (result == -EACCES)
		FUNC4(1, dev, "Cannot enter power save mode\n");
	else if (result < 0)
		FUNC5(dev, "'Enter power save' (0x%04x) command failed: "
			"%d - %s\n", I2400M_MT_CMD_ENTER_POWERSAVE,
			result, strerr);
	else
		FUNC4(1, dev, "device ready to power save\n");
	FUNC10(ack_skb);
error_msg_to_dev:
	FUNC9(cmd);
error_alloc:
	return result;
}