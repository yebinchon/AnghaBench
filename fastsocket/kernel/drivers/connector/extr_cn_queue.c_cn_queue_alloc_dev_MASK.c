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
struct sock {int dummy; } ;
struct cn_queue_dev {int /*<<< orphan*/  wq_creation; struct sock* nls; int /*<<< orphan*/  wq_created; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cn_queue_create ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cn_queue_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cn_queue_dev *FUNC7(char *name, struct sock *nls)
{
	struct cn_queue_dev *dev;

	dev = FUNC4(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	FUNC5(dev->name, sizeof(dev->name), "%s", name);
	FUNC2(&dev->refcnt, 0);
	FUNC0(&dev->queue_list);
	FUNC6(&dev->queue_lock);
	FUNC3(&dev->wq_created);

	dev->nls = nls;

	FUNC1(&dev->wq_creation, cn_queue_create);

	return dev;
}