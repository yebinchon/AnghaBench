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
struct omap_mbox {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  mbox_msg_t ;

/* Variables and functions */
 size_t EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_mbox* FUNC1 (struct device*) ; 
 int FUNC2 (struct omap_mbox*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
		const char * buf, size_t count)
{
	int ret;
	mbox_msg_t *p = (mbox_msg_t *)buf;
	struct omap_mbox *mbox = FUNC1(dev);

	for (; count >= sizeof(mbox_msg_t); count -= sizeof(mbox_msg_t)) {
		ret = FUNC2(mbox, FUNC0(*p), NULL);
		if (ret)
			return -EAGAIN;
		p++;
	}

	return (size_t)((char *)p - buf);
}