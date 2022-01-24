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
struct device {int /*<<< orphan*/  kobj; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct attribute_group const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct attribute_group const*) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
			     const struct attribute_group **groups)
{
	int error = 0;
	int i;

	if (groups) {
		for (i = 0; groups[i]; i++) {
			error = FUNC0(&dev->kobj, groups[i]);
			if (error) {
				while (--i >= 0)
					FUNC1(&dev->kobj,
							   groups[i]);
				break;
			}
		}
	}
	return error;
}