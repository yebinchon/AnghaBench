#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kobject {int /*<<< orphan*/ * kset; } ;
struct device {TYPE_2__* class; } ;
struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {int /*<<< orphan*/  class_dirs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 

__attribute__((used)) static void FUNC1(struct device *dev, struct kobject *glue_dir)
{
	/* see if we live in a "glue" directory */
	if (!glue_dir || !dev->class ||
	    glue_dir->kset != &dev->class->p->class_dirs)
		return;

	FUNC0(glue_dir);
}