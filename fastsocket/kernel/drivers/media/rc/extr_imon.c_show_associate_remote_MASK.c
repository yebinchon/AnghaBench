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
struct imon_context {int /*<<< orphan*/  lock; scalar_t__ rf_isassociating; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct imon_context* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d,
				     struct device_attribute *attr,
				     char *buf)
{
	struct imon_context *ictx = FUNC0(d);

	if (!ictx)
		return -ENODEV;

	FUNC2(&ictx->lock);
	if (ictx->rf_isassociating)
		FUNC4(buf, "associating\n");
	else
		FUNC4(buf, "closed\n");

	FUNC1(d, "Visit http://www.lirc.org/html/imon-24g.html for "
		 "instructions on how to associate your iMON 2.4G DT/LT "
		 "remote\n");
	FUNC3(&ictx->lock);
	return FUNC5(buf);
}