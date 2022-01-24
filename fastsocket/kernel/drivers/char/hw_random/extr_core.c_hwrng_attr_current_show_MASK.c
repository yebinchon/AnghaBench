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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERESTARTSYS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* current_rng ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rng_mutex ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				       struct device_attribute *attr,
				       char *buf)
{
	int err;
	ssize_t ret;
	const char *name = "none";

	err = FUNC0(&rng_mutex);
	if (err)
		return -ERESTARTSYS;
	if (current_rng)
		name = current_rng->name;
	ret = FUNC2(buf, PAGE_SIZE, "%s\n", name);
	FUNC1(&rng_mutex);

	return ret;
}