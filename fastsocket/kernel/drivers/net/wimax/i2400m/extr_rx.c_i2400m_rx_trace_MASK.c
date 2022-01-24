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
struct i2400m_l3l4_hdr {int /*<<< orphan*/  type; } ;
struct i2400m {scalar_t__ ready; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int I2400M_MT_REPORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,struct i2400m_l3l4_hdr const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,char*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (struct i2400m*,struct i2400m_l3l4_hdr const*,size_t) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct wimax_dev*,char*,struct i2400m_l3l4_hdr const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC8(struct i2400m *i2400m,
		     const void *payload, size_t size)
{
	int result;
	struct device *dev = FUNC3(i2400m);
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	const struct i2400m_l3l4_hdr *l3l4_hdr = payload;
	unsigned msg_type;

	result = FUNC4(i2400m, l3l4_hdr, size);
	if (result < 0) {
		FUNC2(dev, "HW BUG? device sent a bad trace message: %d\n",
			result);
		goto error_check;
	}
	msg_type = FUNC5(l3l4_hdr->type);
	FUNC1(1, dev, "Trace %s 0x%04x: %zu bytes\n",
		 msg_type & I2400M_MT_REPORT_MASK ? "REPORT" : "CMD/SET/GET",
		 msg_type, size);
	FUNC0(2, dev, l3l4_hdr, size);
	if (FUNC6(i2400m->ready == 0))	/* only send if up */
		return;
	result = FUNC7(wimax_dev, "trace", l3l4_hdr, size, GFP_KERNEL);
	if (result < 0)
		FUNC2(dev, "error sending trace to userspace: %d\n",
			result);
error_check:
	return;
}