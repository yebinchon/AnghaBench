#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ rx_csum; scalar_t__ can_csum; } ;
typedef  TYPE_1__ board_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_RCSR ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RCSR_CSUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, uint32_t data)
{
	board_info_t *dm = FUNC3(dev);
	unsigned long flags;

	if (dm->can_csum) {
		dm->rx_csum = data;

		FUNC1(&dm->lock, flags);
		FUNC0(dm, DM9000_RCSR, dm->rx_csum ? RCSR_CSUM : 0);
		FUNC2(&dm->lock, flags);

		return 0;
	}

	return -EOPNOTSUPP;
}