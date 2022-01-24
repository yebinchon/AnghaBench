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
typedef  int ssize_t ;
struct TYPE_2__ {int cpufv_disabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 TYPE_1__* ehotk ; 
 int FUNC0 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	int rv, value;

	rv = FUNC0(buf, count, &value);
	if (rv < 0)
		return rv;

	switch (value) {
	case 0:
		if (ehotk->cpufv_disabled)
			FUNC1("cpufv enabled (not officially supported "
				"on this model)\n");
		ehotk->cpufv_disabled = false;
		return rv;
	case 1:
		return -EPERM;
	default:
		return -EINVAL;
	}
}