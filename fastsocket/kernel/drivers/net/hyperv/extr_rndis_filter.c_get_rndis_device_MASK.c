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
struct rndis_device {int /*<<< orphan*/  state; int /*<<< orphan*/  req_list; int /*<<< orphan*/  request_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RNDIS_DEV_UNINITIALIZED ; 
 struct rndis_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rndis_device *FUNC3(void)
{
	struct rndis_device *device;

	device = FUNC1(sizeof(struct rndis_device), GFP_KERNEL);
	if (!device)
		return NULL;

	FUNC2(&device->request_lock);

	FUNC0(&device->req_list);

	device->state = RNDIS_DEV_UNINITIALIZED;

	return device;
}