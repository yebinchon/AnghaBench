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
 int /*<<< orphan*/  I2400M_MT_GET_STATE ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int FUNC5 (struct i2400m_l3l4_hdr const*,char*,int) ; 
 struct sk_buff* FUNC6 (struct i2400m*,struct i2400m_l3l4_hdr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400m*,struct i2400m_l3l4_hdr const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m_l3l4_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct i2400m_l3l4_hdr* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct i2400m_l3l4_hdr* FUNC11 (struct sk_buff*,size_t*) ; 

int FUNC12(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC4(i2400m);
	struct sk_buff *ack_skb;
	struct i2400m_l3l4_hdr *cmd;
	const struct i2400m_l3l4_hdr *ack;
	size_t ack_len;
	char strerr[32];

	result = -ENOMEM;
	cmd = FUNC10(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_alloc;
	cmd->type = FUNC2(I2400M_MT_GET_STATE);
	cmd->length = 0;
	cmd->version = FUNC2(I2400M_L3L4_VERSION);

	ack_skb = FUNC6(i2400m, cmd, sizeof(*cmd));
	if (FUNC0(ack_skb)) {
		FUNC3(dev, "Failed to issue 'get state' command: %ld\n",
			FUNC1(ack_skb));
		result = FUNC1(ack_skb);
		goto error_msg_to_dev;
	}
	ack = FUNC11(ack_skb, &ack_len);
	result = FUNC5(ack, strerr, sizeof(strerr));
	if (result < 0) {
		FUNC3(dev, "'get state' (0x%04x) command failed: "
			"%d - %s\n", I2400M_MT_GET_STATE, result, strerr);
		goto error_cmd_failed;
	}
	FUNC7(i2400m, ack, ack_len - sizeof(*ack),
				 "GET STATE");
	result = 0;
	FUNC9(ack_skb);
error_cmd_failed:
error_msg_to_dev:
	FUNC8(cmd);
error_alloc:
	return result;
}