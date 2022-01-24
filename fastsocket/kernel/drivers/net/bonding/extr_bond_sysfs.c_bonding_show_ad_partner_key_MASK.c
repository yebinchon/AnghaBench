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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct bonding {TYPE_1__ params; } ;
struct ad_info {int partner_key; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ BOND_MODE_8023AD ; 
 scalar_t__ FUNC0 (struct bonding*,struct ad_info*) ; 
 int FUNC1 (char*,char*,int) ; 
 struct bonding* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d,
					   struct device_attribute *attr,
					   char *buf)
{
	int count = 0;
	struct bonding *bond = FUNC2(d);

	if (bond->params.mode == BOND_MODE_8023AD) {
		struct ad_info ad_info;
		count = FUNC1(buf, "%d\n",
				(FUNC0(bond, &ad_info))
				?  0 : ad_info.partner_key);
	}

	return count;
}