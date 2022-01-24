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
struct request_queue {int /*<<< orphan*/  kobj; int /*<<< orphan*/  request_fn; } ;
struct gendisk {struct request_queue* queue; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct device* FUNC3 (struct gendisk*) ; 
 int FUNC4 (struct request_queue*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct gendisk *disk)
{
	int ret;
	struct device *dev = FUNC3(disk);

	struct request_queue *q = disk->queue;

	if (FUNC0(!q))
		return -ENXIO;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	ret = FUNC5(&q->kobj, FUNC7(&dev->kobj), "%s", "queue");
	if (ret < 0)
		return ret;

	FUNC8(&q->kobj, KOBJ_ADD);

	if (!q->request_fn)
		return 0;

	ret = FUNC4(q);
	if (ret) {
		FUNC8(&q->kobj, KOBJ_REMOVE);
		FUNC6(&q->kobj);
		FUNC2(FUNC3(disk));
		return ret;
	}

	return 0;
}