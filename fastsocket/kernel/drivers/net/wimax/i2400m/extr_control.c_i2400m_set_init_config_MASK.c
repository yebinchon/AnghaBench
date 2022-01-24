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
struct i2400m_tlv_hdr {int /*<<< orphan*/  length; } ;
struct i2400m_l3l4_hdr {void* version; void* length; void* type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  strerr ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int I2400M_L3L4_VERSION ; 
 unsigned int I2400M_MT_SET_INIT_CONFIG ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_hdr const**,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_hdr const**,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,unsigned int,...) ; 
 struct device* FUNC7 (struct i2400m*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC9 (struct i2400m*,void*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,struct i2400m_tlv_hdr const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 

int FUNC16(struct i2400m *i2400m,
			   const struct i2400m_tlv_hdr **arg, size_t args)
{
	int result;
	struct device *dev = FUNC7(i2400m);
	struct sk_buff *ack_skb;
	struct i2400m_l3l4_hdr *cmd;
	char strerr[32];
	unsigned argc, argsize, tlv_size;
	const struct i2400m_tlv_hdr *tlv_hdr;
	void *buf, *itr;

	FUNC5(3, dev, "(i2400m %p arg %p args %zu)\n", i2400m, arg, args);
	result = 0;
	if (args == 0)
		goto none;
	/* Compute the size of all the TLVs, so we can alloc a
	 * contiguous command block to copy them. */
	argsize = 0;
	for (argc = 0; argc < args; argc++) {
		tlv_hdr = arg[argc];
		argsize += sizeof(*tlv_hdr) + FUNC13(tlv_hdr->length);
	}
	FUNC2(argc >= 9);	/* As per hw spec */

	/* Alloc the space for the command and TLVs*/
	result = -ENOMEM;
	buf = FUNC12(sizeof(*cmd) + argsize, GFP_KERNEL);
	if (buf == NULL)
		goto error_alloc;
	cmd = buf;
	cmd->type = FUNC3(I2400M_MT_SET_INIT_CONFIG);
	cmd->length = FUNC3(argsize);
	cmd->version = FUNC3(I2400M_L3L4_VERSION);

	/* Copy the TLVs */
	itr = buf + sizeof(*cmd);
	for (argc = 0; argc < args; argc++) {
		tlv_hdr = arg[argc];
		tlv_size = sizeof(*tlv_hdr) + FUNC13(tlv_hdr->length);
		FUNC14(itr, tlv_hdr, tlv_size);
		itr += tlv_size;
	}

	/* Send the message! */
	ack_skb = FUNC9(i2400m, buf, sizeof(*cmd) + argsize);
	result = FUNC1(ack_skb);
	if (FUNC0(ack_skb)) {
		FUNC6(dev, "Failed to issue 'init config' command: %d\n",
			result);

		goto error_msg_to_dev;
	}
	result = FUNC8(FUNC15(ack_skb),
					 strerr, sizeof(strerr));
	if (result < 0)
		FUNC6(dev, "'init config' (0x%04x) command failed: %d - %s\n",
			I2400M_MT_SET_INIT_CONFIG, result, strerr);
	FUNC11(ack_skb);
error_msg_to_dev:
	FUNC10(buf);
error_alloc:
none:
	FUNC4(3, dev, "(i2400m %p arg %p args %zu) = %d\n",
		i2400m, arg, args, result);
	return result;

}