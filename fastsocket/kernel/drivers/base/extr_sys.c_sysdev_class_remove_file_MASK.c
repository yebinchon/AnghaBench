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
struct sysdev_class_attribute {int /*<<< orphan*/  attr; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct sysdev_class *c,
			      struct sysdev_class_attribute *a)
{
	FUNC0(&c->kset.kobj, &a->attr);
}