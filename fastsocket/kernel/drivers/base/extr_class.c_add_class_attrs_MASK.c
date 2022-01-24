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
struct class {int /*<<< orphan*/ * class_attrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct class*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct class*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct class *cls)
{
	int i;
	int error = 0;

	if (cls->class_attrs) {
		for (i = 0; FUNC0(cls->class_attrs[i]); i++) {
			error = FUNC1(cls, &cls->class_attrs[i]);
			if (error)
				goto error;
		}
	}
done:
	return error;
error:
	while (--i >= 0)
		FUNC2(cls, &cls->class_attrs[i]);
	goto done;
}