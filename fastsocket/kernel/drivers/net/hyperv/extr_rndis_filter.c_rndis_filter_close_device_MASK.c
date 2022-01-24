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
struct rndis_device {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ RNDIS_DEV_DATAINITIALIZED ; 
 scalar_t__ RNDIS_DEV_INITIALIZED ; 
 int FUNC0 (struct rndis_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct rndis_device *dev)
{
	int ret;

	if (dev->state != RNDIS_DEV_DATAINITIALIZED)
		return 0;

	ret = FUNC0(dev, 0);
	if (ret == 0)
		dev->state = RNDIS_DEV_INITIALIZED;

	return ret;
}