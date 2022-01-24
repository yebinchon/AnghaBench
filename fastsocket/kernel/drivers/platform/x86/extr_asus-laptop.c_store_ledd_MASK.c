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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ ledd_status; } ;

/* Variables and functions */
 TYPE_1__* hotk ; 
 int /*<<< orphan*/  ledd_set_handle ; 
 int FUNC0 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	int rv, value;

	rv = FUNC0(buf, count, &value);
	if (rv > 0) {
		if (FUNC2(ledd_set_handle, NULL, value, NULL))
			FUNC1("LED display write failed\n");
		else
			hotk->ledd_status = (u32) value;
	}
	return rv;
}