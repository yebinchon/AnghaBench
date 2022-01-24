#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rio_dev {TYPE_3__* rswitch; TYPE_2__* net; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_6__ {scalar_t__* route_table; } ;
struct TYPE_5__ {TYPE_1__* hport; } ;
struct TYPE_4__ {int /*<<< orphan*/  sys_size; } ;

/* Variables and functions */
 scalar_t__ RIO_INVALID_ROUTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,scalar_t__) ; 
 struct rio_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct rio_dev *rdev = FUNC2(dev);
	char *str = buf;
	int i;

	if (!rdev->rswitch)
		goto out;

	for (i = 0; i < FUNC0(rdev->net->hport->sys_size);
			i++) {
		if (rdev->rswitch->route_table[i] == RIO_INVALID_ROUTE)
			continue;
		str +=
		    FUNC1(str, "%04x %02x\n", i,
			    rdev->rswitch->route_table[i]);
	}

      out:
	return (str - buf);
}