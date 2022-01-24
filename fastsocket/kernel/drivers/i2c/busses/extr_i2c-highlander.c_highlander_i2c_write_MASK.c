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
typedef  int /*<<< orphan*/  u16 ;
struct highlander_i2c_dev {int buf_len; int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ SMTRDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct highlander_i2c_dev*) ; 
 scalar_t__ FUNC2 (struct highlander_i2c_dev*) ; 
 int FUNC3 (struct highlander_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct highlander_i2c_dev *dev)
{
	int i, cnt;
	u16 data[16];

	FUNC5(dev->buf, data, dev->buf_len);

	cnt = (dev->buf_len + 1) >> 1;
	for (i = 0; i < cnt; i++) {
		FUNC4(data[i], dev->base + SMTRDR + (i * sizeof(u16)));
		FUNC0(dev->dev, "write data[%x] 0x%04x\n", i, data[i]);
	}

	if (FUNC2(dev))
		return -EAGAIN;

	FUNC1(dev);

	return FUNC3(dev);
}