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
typedef  int u32 ;
struct pd_uinfo {int /*<<< orphan*/  state; } ;
struct crypto4xx_device {scalar_t__ pdr_tail; TYPE_1__* core_dev; scalar_t__ pdr_uinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PD_ENTRY_FREE ; 
 scalar_t__ PPC4XX_LAST_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC2(struct crypto4xx_device *dev, u32 idx)
{
	struct pd_uinfo *pd_uinfo;
	unsigned long flags;

	pd_uinfo = (struct pd_uinfo *)(dev->pdr_uinfo +
				       sizeof(struct pd_uinfo) * idx);
	FUNC0(&dev->core_dev->lock, flags);
	if (dev->pdr_tail != PPC4XX_LAST_PD)
		dev->pdr_tail++;
	else
		dev->pdr_tail = 0;
	pd_uinfo->state = PD_ENTRY_FREE;
	FUNC1(&dev->core_dev->lock, flags);

	return 0;
}