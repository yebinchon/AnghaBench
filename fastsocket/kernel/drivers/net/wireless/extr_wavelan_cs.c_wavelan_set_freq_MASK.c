#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union iwreq_data {int /*<<< orphan*/  freq; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_1__ net_local ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MMR_FEE_STATUS_BUSY ; 
 int MMR_FEE_STATUS_DWLD ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmr_fee_status ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu,
			    char *extra)
{
	unsigned int base = dev->base_addr;
	net_local *lp = FUNC2(dev);
	unsigned long flags;
	int ret;

	/* Disable interrupts and save flags. */
	FUNC3(&lp->spinlock, flags);
	
	/* Attempt to recognise 2.00 cards (2.4 GHz frequency selectable). */
	if (!(FUNC0(base, FUNC1(0, mmr_fee_status)) &
	      (MMR_FEE_STATUS_DWLD | MMR_FEE_STATUS_BUSY)))
		ret = FUNC5(base, &(wrqu->freq));
	else
		ret = -EOPNOTSUPP;

	/* Enable interrupts and restore flags. */
	FUNC4(&lp->spinlock, flags);

	return ret;
}