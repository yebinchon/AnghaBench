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
struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i2400m {int /*<<< orphan*/  wimax_dev; } ;
struct genl_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,struct i2400m*,void const*,size_t,struct genl_info const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct wimax_dev*,struct i2400m*,void const*,size_t,struct genl_info const*) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 struct sk_buff* FUNC5 (struct i2400m*,void const*,size_t) ; 
 struct i2400m* FUNC6 (struct wimax_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static
int FUNC8(struct wimax_dev *wimax_dev,
			    const char *pipe_name,
			    const void *msg_buf, size_t msg_len,
			    const struct genl_info *genl_info)
{
	int result;
	struct i2400m *i2400m = FUNC6(wimax_dev);
	struct device *dev = FUNC4(i2400m);
	struct sk_buff *ack_skb;

	FUNC3(4, dev, "(wimax_dev %p [i2400m %p] msg_buf %p "
		  "msg_len %zu genl_info %p)\n", wimax_dev, i2400m,
		  msg_buf, msg_len, genl_info);
	ack_skb = FUNC5(i2400m, msg_buf, msg_len);
	result = FUNC1(ack_skb);
	if (FUNC0(ack_skb))
		goto error_msg_to_dev;
	result = FUNC7(&i2400m->wimax_dev, ack_skb);
error_msg_to_dev:
	FUNC2(4, dev, "(wimax_dev %p [i2400m %p] msg_buf %p msg_len %zu "
		"genl_info %p) = %d\n", wimax_dev, i2400m, msg_buf, msg_len,
		genl_info, result);
	return result;
}