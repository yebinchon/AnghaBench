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
struct virtnet_info {int /*<<< orphan*/  napi; int /*<<< orphan*/  refill; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct virtnet_info* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct virtnet_info *vi = FUNC2(dev);

	/* Make sure refill_work doesn't re-enable napi! */
	FUNC0(&vi->refill);
	FUNC1(&vi->napi);

	return 0;
}