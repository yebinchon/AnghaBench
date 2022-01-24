#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {struct niu_parent* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct niu_parent {int num_ports; int /*<<< orphan*/ * txchan_per_port; int /*<<< orphan*/ * rxchan_per_port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 struct platform_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				    struct device_attribute *attr, char *buf,
				    int rx)
{
	struct platform_device *plat_dev = FUNC1(dev);
	struct niu_parent *p = plat_dev->dev.platform_data;
	char *orig_buf = buf;
	u8 *arr;
	int i;

	arr = (rx ? p->rxchan_per_port : p->txchan_per_port);

	for (i = 0; i < p->num_ports; i++) {
		buf += FUNC0(buf,
			       (i == 0) ? "%d" : " %d",
			       arr[i]);
	}
	buf += FUNC0(buf, "\n");

	return buf - orig_buf;
}