#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int value; int /*<<< orphan*/  disabled; } ;
union iwreq_data {TYPE_1__ nwid; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_9__ {int* psa_nwid; int psa_nwid_select; } ;
typedef  TYPE_3__ psa_t ;
struct TYPE_10__ {int /*<<< orphan*/  spinlock; } ;
typedef  TYPE_4__ net_local ;
struct TYPE_8__ {int mmw_netw_id_l; int mmw_netw_id_h; } ;
struct TYPE_11__ {TYPE_2__ w; } ;
typedef  TYPE_5__ mm_t ;

/* Variables and functions */
 int MMW_LOOPT_SEL_DIS_NWID ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,unsigned char*,int) ; 
 int /*<<< orphan*/  mmw_loopt_sel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu,
			    char *extra)
{
	unsigned int base = dev->base_addr;
	net_local *lp = FUNC3(dev);
	psa_t psa;
	mm_t m;
	unsigned long flags;
	int ret = 0;

	/* Disable interrupts and save flags. */
	FUNC5(&lp->spinlock, flags);
	
	/* Set NWID in WaveLAN. */
	if (!wrqu->nwid.disabled) {
		/* Set NWID in psa */
		psa.psa_nwid[0] = (wrqu->nwid.value & 0xFF00) >> 8;
		psa.psa_nwid[1] = wrqu->nwid.value & 0xFF;
		psa.psa_nwid_select = 0x01;
		FUNC4(dev,
			  (char *) psa.psa_nwid - (char *) &psa,
			  (unsigned char *) psa.psa_nwid, 3);

		/* Set NWID in mmc. */
		m.w.mmw_netw_id_l = psa.psa_nwid[1];
		m.w.mmw_netw_id_h = psa.psa_nwid[0];
		FUNC1(base,
			  (char *) &m.w.mmw_netw_id_l -
			  (char *) &m,
			  (unsigned char *) &m.w.mmw_netw_id_l, 2);
		FUNC0(base, FUNC2(0, mmw_loopt_sel), 0x00);
	} else {
		/* Disable NWID in the psa. */
		psa.psa_nwid_select = 0x00;
		FUNC4(dev,
			  (char *) &psa.psa_nwid_select -
			  (char *) &psa,
			  (unsigned char *) &psa.psa_nwid_select,
			  1);

		/* Disable NWID in the mmc (no filtering). */
		FUNC0(base, FUNC2(0, mmw_loopt_sel),
			MMW_LOOPT_SEL_DIS_NWID);
	}
	/* update the Wavelan checksum */
	FUNC7(dev);

	/* Enable interrupts and restore flags. */
	FUNC6(&lp->spinlock, flags);

	return ret;
}