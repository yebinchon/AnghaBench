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
struct device {int /*<<< orphan*/  kobj; } ;
struct attribute_container {scalar_t__ grp; struct device_attribute** attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct attribute_container* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,struct device_attribute*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC4(struct device *classdev)
{
	struct attribute_container *cont =
		FUNC1(classdev);
	struct device_attribute **attrs = cont->attrs;
	int i, error;

	FUNC0(attrs && cont->grp);

	if (!attrs && !cont->grp)
		return 0;

	if (cont->grp)
		return FUNC3(&classdev->kobj, cont->grp);

	for (i = 0; attrs[i]; i++) {
		error = FUNC2(classdev, attrs[i]);
		if (error)
			return error;
	}

	return 0;
}