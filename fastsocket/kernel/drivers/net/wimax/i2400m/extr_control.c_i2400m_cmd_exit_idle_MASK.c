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
struct i2400m_l3l4_hdr {void* version; scalar_t__ length; void* type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  strerr ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2400M_L3L4_VERSION ; 
 int /*<<< orphan*/  I2400M_MT_CMD_EXIT_IDLE ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC6 (struct i2400m*,struct i2400m_l3l4_hdr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400m_l3l4_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct i2400m_l3l4_hdr* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

int FUNC11(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC4(i2400m);
	struct sk_buff *ack_skb;
	struct i2400m_l3l4_hdr *cmd;
	char strerr[32];

	result = -ENOMEM;
	cmd = FUNC9(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_alloc;
	cmd->type = FUNC2(I2400M_MT_CMD_EXIT_IDLE);
	cmd->length = 0;
	cmd->version = FUNC2(I2400M_L3L4_VERSION);

	ack_skb = FUNC6(i2400m, cmd, sizeof(*cmd));
	result = FUNC1(ack_skb);
	if (FUNC0(ack_skb)) {
		FUNC3(dev, "Failed to issue 'exit idle' command: %d\n",
			result);
		goto error_msg_to_dev;
	}
	result = FUNC5(FUNC10(ack_skb),
					 strerr, sizeof(strerr));
	FUNC8(ack_skb);
error_msg_to_dev:
	FUNC7(cmd);
error_alloc:
	return result;

}