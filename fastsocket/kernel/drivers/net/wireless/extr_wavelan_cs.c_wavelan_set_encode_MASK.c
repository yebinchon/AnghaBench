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
struct TYPE_5__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ encoding; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int psa_encryption_select; int /*<<< orphan*/  psa_encryption_key; } ;
typedef  TYPE_2__ psa_t ;
struct TYPE_7__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_3__ net_local ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IW_ENCODE_DISABLED ; 
 int MMW_ENCR_ENABLE_EN ; 
 int MMW_ENCR_ENABLE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  mmw_encr_enable ; 
 int /*<<< orphan*/  mmw_encr_key ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev,
			      struct iw_request_info *info,
			      union iwreq_data *wrqu,
			      char *extra)
{
	unsigned int base = dev->base_addr;
	net_local *lp = FUNC5(dev);
	unsigned long flags;
	psa_t psa;
	int ret = 0;

	/* Disable interrupts and save flags. */
	FUNC7(&lp->spinlock, flags);

	/* Check if capable of encryption */
	if (!FUNC1(base)) {
		ret = -EOPNOTSUPP;
	}

	/* Check the size of the key */
	if((wrqu->encoding.length != 8) && (wrqu->encoding.length != 0)) {
		ret = -EINVAL;
	}

	if(!ret) {
		/* Basic checking... */
		if (wrqu->encoding.length == 8) {
			/* Copy the key in the driver */
			FUNC0(psa.psa_encryption_key, extra,
			       wrqu->encoding.length);
			psa.psa_encryption_select = 1;

			FUNC6(dev,
				  (char *) &psa.psa_encryption_select -
				  (char *) &psa,
				  (unsigned char *) &psa.
				  psa_encryption_select, 8 + 1);

			FUNC2(base, FUNC4(0, mmw_encr_enable),
				MMW_ENCR_ENABLE_EN | MMW_ENCR_ENABLE_MODE);
			FUNC3(base, FUNC4(0, mmw_encr_key),
				  (unsigned char *) &psa.
				  psa_encryption_key, 8);
		}

		/* disable encryption */
		if (wrqu->encoding.flags & IW_ENCODE_DISABLED) {
			psa.psa_encryption_select = 0;
			FUNC6(dev,
				  (char *) &psa.psa_encryption_select -
				  (char *) &psa,
				  (unsigned char *) &psa.
				  psa_encryption_select, 1);

			FUNC2(base, FUNC4(0, mmw_encr_enable), 0);
		}
		/* update the Wavelan checksum */
		FUNC9(dev);
	}

	/* Enable interrupts and restore flags. */
	FUNC8(&lp->spinlock, flags);

	return ret;
}