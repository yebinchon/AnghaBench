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
struct devres {void* data; } ;
struct device {int /*<<< orphan*/  devres_lock; } ;
typedef  int /*<<< orphan*/  dr_release_t ;
typedef  int /*<<< orphan*/  dr_match_t ;

/* Variables and functions */
 struct devres* FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void * FUNC3(struct device *dev, dr_release_t release,
		   dr_match_t match, void *match_data)
{
	struct devres *dr;
	unsigned long flags;

	FUNC1(&dev->devres_lock, flags);
	dr = FUNC0(dev, release, match, match_data);
	FUNC2(&dev->devres_lock, flags);

	if (dr)
		return dr->data;
	return NULL;
}