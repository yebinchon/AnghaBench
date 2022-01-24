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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {struct niu_parent* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct niu_parent {scalar_t__ port_phy; int num_ports; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PORT_PHY_INVALID ; 
 scalar_t__ PORT_PHY_UNKNOWN ; 
 int PORT_TYPE_10G ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	struct platform_device *plat_dev = FUNC2(dev);
	struct niu_parent *p = plat_dev->dev.platform_data;
	u32 port_phy = p->port_phy;
	char *orig_buf = buf;
	int i;

	if (port_phy == PORT_PHY_UNKNOWN ||
	    port_phy == PORT_PHY_INVALID)
		return 0;

	for (i = 0; i < p->num_ports; i++) {
		const char *type_str;
		int type;

		type = FUNC0(port_phy, i);
		if (type == PORT_TYPE_10G)
			type_str = "10G";
		else
			type_str = "1G";
		buf += FUNC1(buf,
			       (i == 0) ? "%s" : " %s",
			       type_str);
	}
	buf += FUNC1(buf, "\n");
	return buf - orig_buf;
}