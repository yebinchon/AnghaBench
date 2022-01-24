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
struct qib_ibport {int mkey_lease_timeout; int mkeyprot; scalar_t__ mkey; int mkey_violations; int mkey_lease_period; } ;
struct ib_smp {scalar_t__ mkey; int method; } ;

/* Variables and functions */
 int HZ ; 
 int IB_MAD_IGNORE_MKEY ; 
#define  IB_MGMT_METHOD_GET 130 
#define  IB_MGMT_METHOD_SET 129 
#define  IB_MGMT_METHOD_TRAP_REPRESS 128 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct qib_ibport*,struct ib_smp*) ; 
 scalar_t__ FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct qib_ibport *ibp, struct ib_smp *smp, int mad_flags)
{
	int valid_mkey = 0;
	int ret = 0;

	/* Is the mkey in the process of expiring? */
	if (ibp->mkey_lease_timeout &&
	    FUNC1(jiffies, ibp->mkey_lease_timeout)) {
		/* Clear timeout and mkey protection field. */
		ibp->mkey_lease_timeout = 0;
		ibp->mkeyprot = 0;
	}

	if ((mad_flags & IB_MAD_IGNORE_MKEY) ||  ibp->mkey == 0 ||
	    ibp->mkey == smp->mkey)
		valid_mkey = 1;

	/* Unset lease timeout on any valid Get/Set/TrapRepress */
	if (valid_mkey && ibp->mkey_lease_timeout &&
	    (smp->method == IB_MGMT_METHOD_GET ||
	     smp->method == IB_MGMT_METHOD_SET ||
	     smp->method == IB_MGMT_METHOD_TRAP_REPRESS))
		ibp->mkey_lease_timeout = 0;

	if (!valid_mkey) {
		switch (smp->method) {
		case IB_MGMT_METHOD_GET:
			/* Bad mkey not a violation below level 2 */
			if (ibp->mkeyprot < 2)
				break;
		case IB_MGMT_METHOD_SET:
		case IB_MGMT_METHOD_TRAP_REPRESS:
			if (ibp->mkey_violations != 0xFFFF)
				++ibp->mkey_violations;
			if (!ibp->mkey_lease_timeout && ibp->mkey_lease_period)
				ibp->mkey_lease_timeout = jiffies +
					ibp->mkey_lease_period * HZ;
			/* Generate a trap notice. */
			FUNC0(ibp, smp);
			ret = 1;
		}
	}

	return ret;
}