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
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct devres {void* data; TYPE_1__ node; } ;
struct device {int /*<<< orphan*/  devres_lock; } ;
typedef  int /*<<< orphan*/  dr_release_t ;
typedef  int /*<<< orphan*/  dr_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,TYPE_1__*,char*) ; 
 struct devres* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void * FUNC5(struct device *dev, dr_release_t release,
		     dr_match_t match, void *match_data)
{
	struct devres *dr;
	unsigned long flags;

	FUNC3(&dev->devres_lock, flags);
	dr = FUNC1(dev, release, match, match_data);
	if (dr) {
		FUNC2(&dr->node.entry);
		FUNC0(dev, &dr->node, "REM");
	}
	FUNC4(&dev->devres_lock, flags);

	if (dr)
		return dr->data;
	return NULL;
}