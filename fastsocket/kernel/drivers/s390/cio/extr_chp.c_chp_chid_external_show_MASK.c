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
struct TYPE_2__ {int flags; } ;
struct channel_path {int /*<<< orphan*/  lock; TYPE_1__ desc_fmt1; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 struct channel_path* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				      struct device_attribute *attr, char *buf)
{
	struct channel_path *chp = FUNC3(dev);
	ssize_t rc;

	FUNC0(&chp->lock);
	if (chp->desc_fmt1.flags & 0x10)
		rc = FUNC2(buf, "%x\n", chp->desc_fmt1.flags & 0x8 ? 1 : 0);
	else
		rc = 0;
	FUNC1(&chp->lock);

	return rc;
}