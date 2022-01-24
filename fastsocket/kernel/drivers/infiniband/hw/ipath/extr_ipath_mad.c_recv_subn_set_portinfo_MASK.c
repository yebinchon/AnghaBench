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
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ipath_ibdev {scalar_t__ sm_lid; int mkeyprot; int sm_sl; int subnet_timeout; scalar_t__ qkey_violations; int /*<<< orphan*/  z_pkey_violations; scalar_t__ mkey_violations; int /*<<< orphan*/  vl_high_limit; void* mkey_lease_period; int /*<<< orphan*/  gid_prefix; int /*<<< orphan*/  mkey; struct ipath_devdata* dd; } ;
struct ipath_devdata {scalar_t__ ipath_lid; int ipath_lmc; int ipath_link_width_supported; int ipath_link_speed_supported; } ;
struct ib_smp {int /*<<< orphan*/  status; int /*<<< orphan*/  attr_mod; scalar_t__ data; } ;
struct ib_port_info {int mkeyprot_resv_lmc; int link_width_enabled; int linkspeedactive_enabled; int portphysstate_linkdown; int neighbormtu_mastersmsl; int operationalvl_pei_peo_fpi_fpo; scalar_t__ mkey_violations; scalar_t__ pkey_violations; scalar_t__ qkey_violations; int localphyerrors_overrunerrors; int clientrereg_resv_subnetto; int linkspeed_portstate; int /*<<< orphan*/  vl_high_limit; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lid; int /*<<< orphan*/  mkey_lease_period; int /*<<< orphan*/  gid_prefix; int /*<<< orphan*/  mkey; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_1__ element; struct ib_device* device; } ;
struct ib_device {scalar_t__ phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_CLIENT_REREGISTER ; 
 int /*<<< orphan*/  IB_EVENT_LID_CHANGE ; 
 int /*<<< orphan*/  IB_EVENT_SM_CHANGE ; 
 int IB_MAD_RESULT_CONSUMED ; 
 int IB_MAD_RESULT_SUCCESS ; 
#define  IB_MTU_1024 136 
#define  IB_MTU_2048 135 
#define  IB_MTU_256 134 
#define  IB_MTU_4096 133 
#define  IB_MTU_512 132 
#define  IB_PORT_ACTIVE 131 
#define  IB_PORT_ARMED 130 
#define  IB_PORT_DOWN 129 
#define  IB_PORT_NOP 128 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 scalar_t__ IPATH_IB_LINKACTIVE ; 
 scalar_t__ IPATH_IB_LINKARM ; 
 scalar_t__ IPATH_IB_LINKDOWN ; 
 scalar_t__ IPATH_IB_LINKDOWN_DISABLE ; 
 scalar_t__ IPATH_IB_LINKDOWN_ONLY ; 
 scalar_t__ IPATH_IB_LINKDOWN_SLEEP ; 
 int IPATH_LINKACTIVE ; 
 int IPATH_LINKARMED ; 
 int IPATH_LINKINIT ; 
 scalar_t__ IPATH_MULTICAST_LID_BASE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  ipath_mtu4096 ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ipath_devdata*,int,int) ; 
 int FUNC8 (struct ib_smp*,struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ipath_devdata*,int) ; 
 scalar_t__ FUNC12 (struct ipath_devdata*,int) ; 
 scalar_t__ FUNC13 (struct ipath_devdata*,int) ; 
 struct ipath_ibdev* FUNC14 (struct ib_device*) ; 

__attribute__((used)) static int FUNC15(struct ib_smp *smp,
				  struct ib_device *ibdev, u8 port)
{
	struct ib_port_info *pip = (struct ib_port_info *)smp->data;
	struct ib_event event;
	struct ipath_ibdev *dev;
	struct ipath_devdata *dd;
	char clientrereg = 0;
	u16 lid, smlid;
	u8 lwe;
	u8 lse;
	u8 state;
	u16 lstate;
	u32 mtu;
	int ret, ore;

	if (FUNC1(smp->attr_mod) > ibdev->phys_port_cnt)
		goto err;

	dev = FUNC14(ibdev);
	dd = dev->dd;
	event.device = ibdev;
	event.element.port_num = port;

	dev->mkey = pip->mkey;
	dev->gid_prefix = pip->gid_prefix;
	dev->mkey_lease_period = FUNC0(pip->mkey_lease_period);

	lid = FUNC0(pip->lid);
	if (dd->ipath_lid != lid ||
	    dd->ipath_lmc != (pip->mkeyprot_resv_lmc & 7)) {
		/* Must be a valid unicast LID address. */
		if (lid == 0 || lid >= IPATH_MULTICAST_LID_BASE)
			goto err;
		FUNC4(dd, lid, pip->mkeyprot_resv_lmc & 7);
		event.event = IB_EVENT_LID_CHANGE;
		FUNC2(&event);
	}

	smlid = FUNC0(pip->sm_lid);
	if (smlid != dev->sm_lid) {
		/* Must be a valid unicast LID address. */
		if (smlid == 0 || smlid >= IPATH_MULTICAST_LID_BASE)
			goto err;
		dev->sm_lid = smlid;
		event.event = IB_EVENT_SM_CHANGE;
		FUNC2(&event);
	}

	/* Allow 1x or 4x to be set (see 14.2.6.6). */
	lwe = pip->link_width_enabled;
	if (lwe) {
		if (lwe == 0xFF)
			lwe = dd->ipath_link_width_supported;
		else if (lwe >= 16 || (lwe & ~dd->ipath_link_width_supported))
			goto err;
		FUNC10(dd, lwe);
	}

	/* Allow 2.5 or 5.0 Gbs. */
	lse = pip->linkspeedactive_enabled & 0xF;
	if (lse) {
		if (lse == 15)
			lse = dd->ipath_link_speed_supported;
		else if (lse >= 8 || (lse & ~dd->ipath_link_speed_supported))
			goto err;
		FUNC9(dd, lse);
	}

	/* Set link down default state. */
	switch (pip->portphysstate_linkdown & 0xF) {
	case 0: /* NOP */
		break;
	case 1: /* SLEEP */
		if (FUNC11(dd, 1))
			goto err;
		break;
	case 2: /* POLL */
		if (FUNC11(dd, 0))
			goto err;
		break;
	default:
		goto err;
	}

	dev->mkeyprot = pip->mkeyprot_resv_lmc >> 6;
	dev->vl_high_limit = pip->vl_high_limit;

	switch ((pip->neighbormtu_mastersmsl >> 4) & 0xF) {
	case IB_MTU_256:
		mtu = 256;
		break;
	case IB_MTU_512:
		mtu = 512;
		break;
	case IB_MTU_1024:
		mtu = 1024;
		break;
	case IB_MTU_2048:
		mtu = 2048;
		break;
	case IB_MTU_4096:
		if (!ipath_mtu4096)
			goto err;
		mtu = 4096;
		break;
	default:
		/* XXX We have already partially updated our state! */
		goto err;
	}
	FUNC6(dd, mtu);

	dev->sm_sl = pip->neighbormtu_mastersmsl & 0xF;

	/* We only support VL0 */
	if (((pip->operationalvl_pei_peo_fpi_fpo >> 4) & 0xF) > 1)
		goto err;

	if (pip->mkey_violations == 0)
		dev->mkey_violations = 0;

	/*
	 * Hardware counter can't be reset so snapshot and subtract
	 * later.
	 */
	if (pip->pkey_violations == 0)
		dev->z_pkey_violations = FUNC3(dd);

	if (pip->qkey_violations == 0)
		dev->qkey_violations = 0;

	ore = pip->localphyerrors_overrunerrors;
	if (FUNC13(dd, (ore >> 4) & 0xF))
		goto err;

	if (FUNC12(dd, (ore & 0xF)))
		goto err;

	dev->subnet_timeout = pip->clientrereg_resv_subnetto & 0x1F;

	if (pip->clientrereg_resv_subnetto & 0x80) {
		clientrereg = 1;
		event.event = IB_EVENT_CLIENT_REREGISTER;
		FUNC2(&event);
	}

	/*
	 * Do the port state change now that the other link parameters
	 * have been set.
	 * Changing the port physical state only makes sense if the link
	 * is down or is being set to down.
	 */
	state = pip->linkspeed_portstate & 0xF;
	lstate = (pip->portphysstate_linkdown >> 4) & 0xF;
	if (lstate && !(state == IB_PORT_DOWN || state == IB_PORT_NOP))
		goto err;

	/*
	 * Only state changes of DOWN, ARM, and ACTIVE are valid
	 * and must be in the correct state to take effect (see 7.2.6).
	 */
	switch (state) {
	case IB_PORT_NOP:
		if (lstate == 0)
			break;
		/* FALLTHROUGH */
	case IB_PORT_DOWN:
		if (lstate == 0)
			lstate = IPATH_IB_LINKDOWN_ONLY;
		else if (lstate == 1)
			lstate = IPATH_IB_LINKDOWN_SLEEP;
		else if (lstate == 2)
			lstate = IPATH_IB_LINKDOWN;
		else if (lstate == 3)
			lstate = IPATH_IB_LINKDOWN_DISABLE;
		else
			goto err;
		FUNC5(dd, lstate);
		if (lstate == IPATH_IB_LINKDOWN_DISABLE) {
			ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
			goto done;
		}
		FUNC7(dd, IPATH_LINKINIT | IPATH_LINKARMED |
				IPATH_LINKACTIVE, 1000);
		break;
	case IB_PORT_ARMED:
		FUNC5(dd, IPATH_IB_LINKARM);
		break;
	case IB_PORT_ACTIVE:
		FUNC5(dd, IPATH_IB_LINKACTIVE);
		break;
	default:
		/* XXX We have already partially updated our state! */
		goto err;
	}

	ret = FUNC8(smp, ibdev, port);

	if (clientrereg)
		pip->clientrereg_resv_subnetto |= 0x80;

	goto done;

err:
	smp->status |= IB_SMP_INVALID_FIELD;
	ret = FUNC8(smp, ibdev, port);

done:
	return ret;
}