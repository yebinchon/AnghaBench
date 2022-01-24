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
struct fc_rport {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct fc_rport*,unsigned long) ; 
 int FUNC1 (char const*,unsigned long*) ; 
 struct fc_rport* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct fc_rport *rport = FUNC2(dev);
	unsigned long val;
	int rc;

	rc = FUNC1(buf, &val);
	if (rc)
		return rc;

	rc = FUNC0(rport, val);
	if (rc)
		return rc;
	return count;
}