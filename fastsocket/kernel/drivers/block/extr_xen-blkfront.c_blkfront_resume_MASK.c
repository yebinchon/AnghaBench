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
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;
struct blkfront_info {scalar_t__ connected; } ;

/* Variables and functions */
 scalar_t__ BLKIF_STATE_CONNECTED ; 
 scalar_t__ BLKIF_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct blkfront_info*,int) ; 
 int FUNC1 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct blkfront_info* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct xenbus_device*,struct blkfront_info*) ; 

__attribute__((used)) static int FUNC5(struct xenbus_device *dev)
{
	struct blkfront_info *info = FUNC3(&dev->dev);
	int err;

	FUNC2(&dev->dev, "blkfront_resume: %s\n", dev->nodename);

	FUNC0(info, info->connected == BLKIF_STATE_CONNECTED);

	err = FUNC4(dev, info);
	if (info->connected == BLKIF_STATE_SUSPENDED && !err)
		err = FUNC1(info);

	return err;
}