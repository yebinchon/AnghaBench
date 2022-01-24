#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int psa_quality_thr; } ;
typedef  TYPE_1__ psa_t ;
struct TYPE_5__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_2__ net_local ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu,
			    char *extra)
{
	net_local *lp = FUNC0(dev);
	psa_t psa;
	unsigned long flags;

	/* Disable interrupts and save flags. */
	FUNC2(&lp->spinlock, flags);
	
	FUNC1(dev,
		 (char *) &psa.psa_quality_thr - (char *) &psa,
		 (unsigned char *) &psa.psa_quality_thr, 1);
	*(extra) = psa.psa_quality_thr & 0x0F;

	/* Enable interrupts and restore flags. */
	FUNC3(&lp->spinlock, flags);

	return 0;
}