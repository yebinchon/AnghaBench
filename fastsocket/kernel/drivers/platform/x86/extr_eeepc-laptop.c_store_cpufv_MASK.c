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
struct eeepc_cpufv {int num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ cpufv_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_CPUFV ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 TYPE_1__* ehotk ; 
 scalar_t__ FUNC0 (struct eeepc_cpufv*) ; 
 int FUNC1 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct eeepc_cpufv c;
	int rv, value;

	if (ehotk->cpufv_disabled)
		return -EPERM;
	if (FUNC0(&c))
		return -ENODEV;
	rv = FUNC1(buf, count, &value);
	if (rv < 0)
		return rv;
	if (!rv || value < 0 || value >= c.num)
		return -EINVAL;
	FUNC2(CM_ASL_CPUFV, value);
	return rv;
}