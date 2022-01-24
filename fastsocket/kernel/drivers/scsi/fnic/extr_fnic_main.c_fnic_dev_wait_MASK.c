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
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long,int) ; 

__attribute__((used)) static int FUNC2(struct vnic_dev *vdev,
			 int (*start)(struct vnic_dev *, int),
			 int (*finished)(struct vnic_dev *, int *),
			 int arg)
{
	unsigned long time;
	int done;
	int err;

	err = start(vdev, arg);
	if (err)
		return err;

	/* Wait for func to complete...2 seconds max */
	time = jiffies + (HZ * 2);
	do {
		err = finished(vdev, &done);
		if (err)
			return err;
		if (done)
			return 0;
		FUNC0(HZ / 10);
	} while (FUNC1(time, jiffies));

	return -ETIMEDOUT;
}