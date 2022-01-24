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
struct tle62x0_state {unsigned char* rx_buff; int nr_gpio; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 char* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 struct tle62x0_state* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int FUNC6 (struct tle62x0_state*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct tle62x0_state *st = FUNC2(dev);
	char *bp = buf;
	unsigned char *buff = st->rx_buff;
	unsigned long fault = 0;
	int ptr;
	int ret;

	FUNC3(&st->lock);
	ret = FUNC6(st);
	FUNC1(dev, "tle62x0_read() returned %d\n", ret);
	if (ret < 0) {
		FUNC4(&st->lock);
		return ret;
	}

	for (ptr = 0; ptr < (st->nr_gpio * 2)/8; ptr += 1) {
		fault <<= 8;
		fault  |= ((unsigned long)buff[ptr]);

		FUNC1(dev, "byte %d is %02x\n", ptr, buff[ptr]);
	}

	for (ptr = 0; ptr < st->nr_gpio; ptr++) {
		bp += FUNC5(bp, "%s ", FUNC0(fault >> (ptr * 2)));
	}

	*bp++ = '\n';

	FUNC4(&st->lock);
	return bp - buf;
}