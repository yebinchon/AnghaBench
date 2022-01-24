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
struct net_device {int /*<<< orphan*/  name; } ;
struct ipw2100_priv {TYPE_1__* ieee; struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  unsigned long ssize_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {unsigned long scan_age; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct ipw2100_priv* FUNC1 (struct device*) ; 
 unsigned long FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d, struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct ipw2100_priv *priv = FUNC1(d);
	struct net_device *dev = priv->net_dev;
	char buffer[] = "00000000";
	unsigned long len =
	    (sizeof(buffer) - 1) > count ? count : sizeof(buffer) - 1;
	unsigned long val;
	char *p = buffer;

	(void)dev;		/* kill unused-var warning for debug-only code */

	FUNC0("enter\n");

	FUNC3(buffer, buf, len);
	buffer[len] = 0;

	if (p[1] == 'x' || p[1] == 'X' || p[0] == 'x' || p[0] == 'X') {
		p++;
		if (p[0] == 'x' || p[0] == 'X')
			p++;
		val = FUNC2(p, &p, 16);
	} else
		val = FUNC2(p, &p, 10);
	if (p == buffer) {
		FUNC0("%s: user supplied invalid value.\n", dev->name);
	} else {
		priv->ieee->scan_age = val;
		FUNC0("set scan_age = %u\n", priv->ieee->scan_age);
	}

	FUNC0("exit\n");
	return len;
}