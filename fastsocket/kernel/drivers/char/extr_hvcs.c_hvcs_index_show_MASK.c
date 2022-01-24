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
struct vio_dev {int dummy; } ;
struct hvcs_struct {int index; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct hvcs_struct* FUNC0 (struct vio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (char*,char*,int) ; 
 struct vio_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct vio_dev *viod = FUNC4(dev);
	struct hvcs_struct *hvcsd = FUNC0(viod);
	unsigned long flags;
	int retval;

	FUNC1(&hvcsd->lock, flags);
	retval = FUNC3(buf, "%d\n", hvcsd->index);
	FUNC2(&hvcsd->lock, flags);
	return retval;
}