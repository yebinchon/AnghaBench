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

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_attribute) ; 
 int FUNC1 (struct device*,struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct device_attribute*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				 struct device_attribute *attrs)
{
	int error = 0;
	int i;

	if (attrs) {
		for (i = 0; FUNC0(attrs[i]); i++) {
			error = FUNC1(dev, &attrs[i]);
			if (error)
				break;
		}
		if (error)
			while (--i >= 0)
				FUNC2(dev, &attrs[i]);
	}
	return error;
}