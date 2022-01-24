#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct qib_ibport {scalar_t__ sm_lid; int sm_sl; int mkeyprot; int vl_high_limit; int subnet_timeout; scalar_t__ qkey_violations; scalar_t__ pkey_violations; scalar_t__ mkey_violations; int /*<<< orphan*/  lock; TYPE_2__* sm_ah; void* mkey_lease_period; int /*<<< orphan*/  gid_prefix; int /*<<< orphan*/  mkey; } ;
struct qib_pportdata {scalar_t__ lid; int lmc; int link_width_supported; int link_width_enabled; int link_speed_supported; int link_speed_enabled; int vls_supported; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  lflags; struct qib_ibport ibport_data; } ;
struct qib_devdata {int /*<<< orphan*/  (* f_set_ib_cfg ) (struct qib_pportdata*,int /*<<< orphan*/ ,int) ;struct qib_pportdata* pport; } ;
struct ib_smp {int /*<<< orphan*/  status; int /*<<< orphan*/  hop_cnt; int /*<<< orphan*/  attr_mod; scalar_t__ data; } ;
struct ib_port_info {int clientrereg_resv_subnetto; int mkeyprot_resv_lmc; int neighbormtu_mastersmsl; int link_width_enabled; int linkspeedactive_enabled; int portphysstate_linkdown; int vl_high_limit; int operationalvl_pei_peo_fpi_fpo; scalar_t__ mkey_violations; scalar_t__ pkey_violations; scalar_t__ qkey_violations; int localphyerrors_overrunerrors; int linkspeed_portstate; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lid; int /*<<< orphan*/  mkey_lease_period; int /*<<< orphan*/  gid_prefix; int /*<<< orphan*/  mkey; } ;
struct TYPE_4__ {int port_num; } ;
struct ib_event {int /*<<< orphan*/  event; TYPE_1__ element; struct ib_device* device; } ;
struct ib_device {int phys_port_cnt; } ;
struct TYPE_6__ {int sl; scalar_t__ dlid; } ;
struct TYPE_5__ {TYPE_3__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_CLIENT_REREGISTER ; 
 int /*<<< orphan*/  IB_EVENT_LID_CHANGE ; 
 int /*<<< orphan*/  IB_EVENT_SM_CHANGE ; 
 int IB_LINKINITCMD_POLL ; 
 int IB_LINKINITCMD_SLEEP ; 
 int IB_MAD_RESULT_CONSUMED ; 
 int IB_MAD_RESULT_SUCCESS ; 
#define  IB_PORT_ACTIVE 131 
#define  IB_PORT_ARMED 130 
#define  IB_PORT_DOWN 129 
#define  IB_PORT_NOP 128 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  QIBL_LINKV ; 
 int /*<<< orphan*/  QIB_IB_CFG_LINKDEFAULT ; 
 int /*<<< orphan*/  QIB_IB_CFG_OP_VLS ; 
 int /*<<< orphan*/  QIB_IB_CFG_VL_HIGH_LIMIT ; 
 scalar_t__ QIB_IB_LINKACTIVE ; 
 scalar_t__ QIB_IB_LINKARM ; 
 scalar_t__ QIB_IB_LINKDOWN ; 
 scalar_t__ QIB_IB_LINKDOWN_DISABLE ; 
 scalar_t__ QIB_IB_LINKDOWN_ONLY ; 
 scalar_t__ QIB_IB_LINKDOWN_SLEEP ; 
 scalar_t__ QIB_MULTICAST_LID_BASE ; 
 int /*<<< orphan*/  _QIB_EVENT_LID_CHANGE_BIT ; 
 int /*<<< orphan*/  _QIB_EVENT_LMC_CHANGE_BIT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_event*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_pportdata*,int) ; 
 scalar_t__ FUNC12 (struct qib_pportdata*,int) ; 
 scalar_t__ FUNC13 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct ib_smp*,struct ib_device*,int) ; 

__attribute__((used)) static int FUNC21(struct ib_smp *smp, struct ib_device *ibdev,
			     u8 port)
{
	struct ib_port_info *pip = (struct ib_port_info *)smp->data;
	struct ib_event event;
	struct qib_devdata *dd;
	struct qib_pportdata *ppd;
	struct qib_ibport *ibp;
	u8 clientrereg = (pip->clientrereg_resv_subnetto & 0x80);
	unsigned long flags;
	u16 lid, smlid;
	u8 lwe;
	u8 lse;
	u8 state;
	u8 vls;
	u8 msl;
	u16 lstate;
	int ret, ore, mtu;
	u32 port_num = FUNC1(smp->attr_mod);

	if (port_num == 0)
		port_num = port;
	else {
		if (port_num > ibdev->phys_port_cnt)
			goto err;
		/* Port attributes can only be set on the receiving port */
		if (port_num != port)
			goto get_only;
	}

	dd = FUNC2(ibdev);
	/* IB numbers ports from 1, hdw from 0 */
	ppd = dd->pport + (port_num - 1);
	ibp = &ppd->ibport_data;
	event.device = ibdev;
	event.element.port_num = port;

	ibp->mkey = pip->mkey;
	ibp->gid_prefix = pip->gid_prefix;
	ibp->mkey_lease_period = FUNC0(pip->mkey_lease_period);

	lid = FUNC0(pip->lid);
	/* Must be a valid unicast LID address. */
	if (lid == 0 || lid >= QIB_MULTICAST_LID_BASE)
		smp->status |= IB_SMP_INVALID_FIELD;
	else if (ppd->lid != lid || ppd->lmc != (pip->mkeyprot_resv_lmc & 7)) {
		if (ppd->lid != lid)
			FUNC8(ppd, _QIB_EVENT_LID_CHANGE_BIT);
		if (ppd->lmc != (pip->mkeyprot_resv_lmc & 7))
			FUNC8(ppd, _QIB_EVENT_LMC_CHANGE_BIT);
		FUNC5(ppd, lid, pip->mkeyprot_resv_lmc & 7);
		event.event = IB_EVENT_LID_CHANGE;
		FUNC3(&event);
	}

	smlid = FUNC0(pip->sm_lid);
	msl = pip->neighbormtu_mastersmsl & 0xF;
	/* Must be a valid unicast LID address. */
	if (smlid == 0 || smlid >= QIB_MULTICAST_LID_BASE)
		smp->status |= IB_SMP_INVALID_FIELD;
	else if (smlid != ibp->sm_lid || msl != ibp->sm_sl) {
		FUNC14(&ibp->lock, flags);
		if (ibp->sm_ah) {
			if (smlid != ibp->sm_lid)
				ibp->sm_ah->attr.dlid = smlid;
			if (msl != ibp->sm_sl)
				ibp->sm_ah->attr.sl = msl;
		}
		FUNC15(&ibp->lock, flags);
		if (smlid != ibp->sm_lid)
			ibp->sm_lid = smlid;
		if (msl != ibp->sm_sl)
			ibp->sm_sl = msl;
		event.event = IB_EVENT_SM_CHANGE;
		FUNC3(&event);
	}

	/* Allow 1x or 4x to be set (see 14.2.6.6). */
	lwe = pip->link_width_enabled;
	if (lwe) {
		if (lwe == 0xFF)
			FUNC11(ppd, ppd->link_width_supported);
		else if (lwe >= 16 || (lwe & ~ppd->link_width_supported))
			smp->status |= IB_SMP_INVALID_FIELD;
		else if (lwe != ppd->link_width_enabled)
			FUNC11(ppd, lwe);
	}

	lse = pip->linkspeedactive_enabled & 0xF;
	if (lse) {
		/*
		 * The IB 1.2 spec. only allows link speed values
		 * 1, 3, 5, 7, 15.  1.2.1 extended to allow specific
		 * speeds.
		 */
		if (lse == 15)
			FUNC10(ppd,
					       ppd->link_speed_supported);
		else if (lse >= 8 || (lse & ~ppd->link_speed_supported))
			smp->status |= IB_SMP_INVALID_FIELD;
		else if (lse != ppd->link_speed_enabled)
			FUNC10(ppd, lse);
	}

	/* Set link down default state. */
	switch (pip->portphysstate_linkdown & 0xF) {
	case 0: /* NOP */
		break;
	case 1: /* SLEEP */
		(void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LINKDEFAULT,
					IB_LINKINITCMD_SLEEP);
		break;
	case 2: /* POLL */
		(void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LINKDEFAULT,
					IB_LINKINITCMD_POLL);
		break;
	default:
		smp->status |= IB_SMP_INVALID_FIELD;
	}

	ibp->mkeyprot = pip->mkeyprot_resv_lmc >> 6;
	ibp->vl_high_limit = pip->vl_high_limit;
	(void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_VL_HIGH_LIMIT,
				    ibp->vl_high_limit);

	mtu = FUNC4((pip->neighbormtu_mastersmsl >> 4) & 0xF);
	if (mtu == -1)
		smp->status |= IB_SMP_INVALID_FIELD;
	else
		FUNC7(ppd, mtu);

	/* Set operational VLs */
	vls = (pip->operationalvl_pei_peo_fpi_fpo >> 4) & 0xF;
	if (vls) {
		if (vls > ppd->vls_supported)
			smp->status |= IB_SMP_INVALID_FIELD;
		else
			(void) dd->f_set_ib_cfg(ppd, QIB_IB_CFG_OP_VLS, vls);
	}

	if (pip->mkey_violations == 0)
		ibp->mkey_violations = 0;

	if (pip->pkey_violations == 0)
		ibp->pkey_violations = 0;

	if (pip->qkey_violations == 0)
		ibp->qkey_violations = 0;

	ore = pip->localphyerrors_overrunerrors;
	if (FUNC13(ppd, (ore >> 4) & 0xF))
		smp->status |= IB_SMP_INVALID_FIELD;

	if (FUNC12(ppd, (ore & 0xF)))
		smp->status |= IB_SMP_INVALID_FIELD;

	ibp->subnet_timeout = pip->clientrereg_resv_subnetto & 0x1F;

	/*
	 * Do the port state change now that the other link parameters
	 * have been set.
	 * Changing the port physical state only makes sense if the link
	 * is down or is being set to down.
	 */
	state = pip->linkspeed_portstate & 0xF;
	lstate = (pip->portphysstate_linkdown >> 4) & 0xF;
	if (lstate && !(state == IB_PORT_DOWN || state == IB_PORT_NOP))
		smp->status |= IB_SMP_INVALID_FIELD;

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
			lstate = QIB_IB_LINKDOWN_ONLY;
		else if (lstate == 1)
			lstate = QIB_IB_LINKDOWN_SLEEP;
		else if (lstate == 2)
			lstate = QIB_IB_LINKDOWN;
		else if (lstate == 3)
			lstate = QIB_IB_LINKDOWN_DISABLE;
		else {
			smp->status |= IB_SMP_INVALID_FIELD;
			break;
		}
		FUNC14(&ppd->lflags_lock, flags);
		ppd->lflags &= ~QIBL_LINKV;
		FUNC15(&ppd->lflags_lock, flags);
		FUNC6(ppd, lstate);
		/*
		 * Don't send a reply if the response would be sent
		 * through the disabled port.
		 */
		if (lstate == QIB_IB_LINKDOWN_DISABLE && smp->hop_cnt) {
			ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
			goto done;
		}
		FUNC9(ppd, QIBL_LINKV, 10);
		break;
	case IB_PORT_ARMED:
		FUNC6(ppd, QIB_IB_LINKARM);
		break;
	case IB_PORT_ACTIVE:
		FUNC6(ppd, QIB_IB_LINKACTIVE);
		break;
	default:
		smp->status |= IB_SMP_INVALID_FIELD;
	}

	if (clientrereg) {
		event.event = IB_EVENT_CLIENT_REREGISTER;
		FUNC3(&event);
	}

	ret = FUNC20(smp, ibdev, port);

	/* restore re-reg bit per o14-12.2.1 */
	pip->clientrereg_resv_subnetto |= clientrereg;

	goto get_only;

err:
	smp->status |= IB_SMP_INVALID_FIELD;
get_only:
	ret = FUNC20(smp, ibdev, port);
done:
	return ret;
}