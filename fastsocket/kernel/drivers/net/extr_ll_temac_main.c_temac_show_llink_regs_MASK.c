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
struct temac_local {int dummy; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct net_device* FUNC0 (struct device*) ; 
 struct temac_local* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (char*,char*,...) ; 
 int FUNC3 (struct temac_local*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct net_device *ndev = FUNC0(dev);
	struct temac_local *lp = FUNC1(ndev);
	int i, len = 0;

	for (i = 0; i < 0x11; i++)
		len += FUNC2(buf + len, "%.8x%s", FUNC3(lp, i),
			       (i % 8) == 7 ? "\n" : " ");
	len += FUNC2(buf + len, "\n");

	return len;
}