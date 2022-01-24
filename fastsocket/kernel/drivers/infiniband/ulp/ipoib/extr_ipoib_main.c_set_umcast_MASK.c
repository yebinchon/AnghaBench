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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			  struct device_attribute *attr,
			  const char *buf, size_t count)
{
	unsigned long umcast_val = FUNC1(buf, NULL, 0);

	FUNC0(FUNC2(dev), umcast_val);

	return count;
}