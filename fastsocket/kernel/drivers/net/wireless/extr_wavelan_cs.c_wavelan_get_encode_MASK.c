#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int length; int /*<<< orphan*/  flags; } ;
union iwreq_data {TYPE_1__ encoding; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  psa_encryption_key; scalar_t__ psa_encryption_select; } ;
typedef  TYPE_2__ psa_t ;
struct TYPE_7__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_3__ net_local ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IW_ENCODE_DISABLED ; 
 int /*<<< orphan*/  IW_ENCODE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_3__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			      struct iw_request_info *info,
			      union iwreq_data *wrqu,
			      char *extra)
{
	unsigned int base = dev->base_addr;
	net_local *lp = FUNC2(dev);
	psa_t psa;
	unsigned long flags;
	int ret = 0;

	/* Disable interrupts and save flags. */
	FUNC4(&lp->spinlock, flags);
	
	/* Check if encryption is available */
	if (!FUNC1(base)) {
		ret = -EOPNOTSUPP;
	} else {
		/* Read the encryption key */
		FUNC3(dev,
			 (char *) &psa.psa_encryption_select -
			 (char *) &psa,
			 (unsigned char *) &psa.
			 psa_encryption_select, 1 + 8);

		/* encryption is enabled ? */
		if (psa.psa_encryption_select)
			wrqu->encoding.flags = IW_ENCODE_ENABLED;
		else
			wrqu->encoding.flags = IW_ENCODE_DISABLED;
		wrqu->encoding.flags |= FUNC1(base);

		/* Copy the key to the user buffer */
		wrqu->encoding.length = 8;
		FUNC0(extra, psa.psa_encryption_key, wrqu->encoding.length);
	}

	/* Enable interrupts and restore flags. */
	FUNC5(&lp->spinlock, flags);

	return ret;
}