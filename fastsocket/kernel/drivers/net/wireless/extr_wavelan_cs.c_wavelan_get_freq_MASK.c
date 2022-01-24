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
struct TYPE_5__ {unsigned short m; int e; } ;
union iwreq_data {TYPE_1__ freq; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int psa_subband; } ;
typedef  TYPE_2__ psa_t ;
struct TYPE_7__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_3__ net_local ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MMR_FEE_STATUS_BUSY ; 
 int MMR_FEE_STATUS_DWLD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,unsigned short*,int) ; 
 unsigned short* fixed_bands ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmr_fee_status ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu,
			    char *extra)
{
	unsigned int base = dev->base_addr;
	net_local *lp = FUNC3(dev);
	psa_t psa;
	unsigned long flags;
	int ret = 0;

	/* Disable interrupts and save flags. */
	FUNC5(&lp->spinlock, flags);
	
	/* Attempt to recognise 2.00 cards (2.4 GHz frequency selectable).
	 * Does it work for everybody, especially old cards? */
	if (!(FUNC1(base, FUNC2(0, mmr_fee_status)) &
	      (MMR_FEE_STATUS_DWLD | MMR_FEE_STATUS_BUSY))) {
		unsigned short freq;

		/* Ask the EEPROM to read the frequency from the first area. */
		FUNC0(base, 0x00, &freq, 1);
		wrqu->freq.m = ((freq >> 5) * 5 + 24000L) * 10000;
		wrqu->freq.e = 1;
	} else {
		FUNC4(dev,
			 (char *) &psa.psa_subband - (char *) &psa,
			 (unsigned char *) &psa.psa_subband, 1);

		if (psa.psa_subband <= 4) {
			wrqu->freq.m = fixed_bands[psa.psa_subband];
			wrqu->freq.e = (psa.psa_subband != 0);
		} else
			ret = -EOPNOTSUPP;
	}

	/* Enable interrupts and restore flags. */
	FUNC6(&lp->spinlock, flags);

	return ret;
}