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
struct i2400m_msg_hdr {scalar_t__ barker; scalar_t__ num_pls; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2400M_D2H_MSG_BARKER ; 
 scalar_t__ I2400M_MAX_PLS_IN_MSG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static
int FUNC5(struct i2400m *i2400m,
			    const struct i2400m_msg_hdr *msg_hdr,
			    size_t buf_size)
{
	int result = -EIO;
	struct device *dev = FUNC2(i2400m);
	if (buf_size < sizeof(*msg_hdr)) {
		FUNC1(dev, "RX: HW BUG? message with short header (%zu "
			"vs %zu bytes expected)\n", buf_size, sizeof(*msg_hdr));
		goto error;
	}
	if (msg_hdr->barker != FUNC0(I2400M_D2H_MSG_BARKER)) {
		FUNC1(dev, "RX: HW BUG? message received with unknown "
			"barker 0x%08x (buf_size %zu bytes)\n",
			FUNC4(msg_hdr->barker), buf_size);
		goto error;
	}
	if (msg_hdr->num_pls == 0) {
		FUNC1(dev, "RX: HW BUG? zero payload packets in message\n");
		goto error;
	}
	if (FUNC3(msg_hdr->num_pls) > I2400M_MAX_PLS_IN_MSG) {
		FUNC1(dev, "RX: HW BUG? message contains more payload "
			"than maximum; ignoring.\n");
		goto error;
	}
	result = 0;
error:
	return result;
}