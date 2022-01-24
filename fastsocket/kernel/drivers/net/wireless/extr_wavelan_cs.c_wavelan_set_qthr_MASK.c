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
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  psa_quality_thr; } ;
typedef  TYPE_1__ psa_t ;
struct TYPE_5__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_2__ net_local ;
typedef  int /*<<< orphan*/ * extra ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmw_quality_thr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu,
			    char *extra)
{
	unsigned int base = dev->base_addr;
	net_local *lp = FUNC2(dev);
	psa_t psa;
	unsigned long flags;

	/* Disable interrupts and save flags. */
	FUNC4(&lp->spinlock, flags);
	
	psa.psa_quality_thr = *(extra) & 0x0F;
	FUNC3(dev,
		  (char *) &psa.psa_quality_thr - (char *) &psa,
		  (unsigned char *) &psa.psa_quality_thr, 1);
	/* update the Wavelan checksum */
	FUNC6(dev);
	FUNC0(base, FUNC1(0, mmw_quality_thr),
		psa.psa_quality_thr);

	/* Enable interrupts and restore flags. */
	FUNC5(&lp->spinlock, flags);

	return 0;
}