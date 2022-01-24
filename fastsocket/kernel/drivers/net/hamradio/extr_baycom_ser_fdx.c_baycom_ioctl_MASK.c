#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  debug3; int /*<<< orphan*/  debug2; int /*<<< orphan*/  debug1; } ;
struct TYPE_7__ {char* modename; TYPE_2__ dbg; } ;
struct hdlcdrv_ioctl {int cmd; TYPE_3__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  last_pllcorr; int /*<<< orphan*/  last_intcnt; } ;
struct TYPE_5__ {scalar_t__ magic; int /*<<< orphan*/  ptt_keyed; } ;
struct baycom_state {int baud; TYPE_4__ debug_vals; TYPE_1__ hdrv; int /*<<< orphan*/  opt_dcd; } ;
struct baycom_ioctl {int cmd; TYPE_3__ data; } ;
typedef  int /*<<< orphan*/  bi ;

/* Variables and functions */
#define  BAYCOMCTL_GETDEBUG 132 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EACCES ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOIOCTLCMD ; 
#define  HDLCDRVCTL_GETMODE 131 
#define  HDLCDRVCTL_MODELIST 130 
#define  HDLCDRVCTL_MODEMPARMASK 129 
#define  HDLCDRVCTL_SETMODE 128 
 scalar_t__ HDLCDRV_MAGIC ; 
 int HDLCDRV_PARMASK_IOBASE ; 
 int HDLCDRV_PARMASK_IRQ ; 
 int SIOCDEVPRIVATE ; 
 int FUNC1 (struct baycom_state*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hdlcdrv_ioctl*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct hdlcdrv_ioctl*,int) ; 
 struct baycom_state* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct ifreq *ifr,
			struct hdlcdrv_ioctl *hi, int cmd)
{
	struct baycom_state *bc;
	struct baycom_ioctl bi;

	if (!dev)
		return -EINVAL;

	bc = FUNC5(dev);
	FUNC0(bc->hdrv.magic != HDLCDRV_MAGIC);

	if (cmd != SIOCDEVPRIVATE)
		return -ENOIOCTLCMD;
	switch (hi->cmd) {
	default:
		break;

	case HDLCDRVCTL_GETMODE:
		FUNC7(hi->data.modename, "ser%u", bc->baud / 100);
		if (bc->opt_dcd <= 0)
			FUNC8(hi->data.modename, (!bc->opt_dcd) ? "*" : "+");
		if (FUNC4(ifr->ifr_data, hi, sizeof(struct hdlcdrv_ioctl)))
			return -EFAULT;
		return 0;

	case HDLCDRVCTL_SETMODE:
		if (FUNC6(dev) || !FUNC2(CAP_NET_ADMIN))
			return -EACCES;
		hi->data.modename[sizeof(hi->data.modename)-1] = '\0';
		return FUNC1(bc, hi->data.modename);

	case HDLCDRVCTL_MODELIST:
		FUNC9(hi->data.modename, "ser12,ser3,ser24");
		if (FUNC4(ifr->ifr_data, hi, sizeof(struct hdlcdrv_ioctl)))
			return -EFAULT;
		return 0;

	case HDLCDRVCTL_MODEMPARMASK:
		return HDLCDRV_PARMASK_IOBASE | HDLCDRV_PARMASK_IRQ;

	}

	if (FUNC3(&bi, ifr->ifr_data, sizeof(bi)))
		return -EFAULT;
	switch (bi.cmd) {
	default:
		return -ENOIOCTLCMD;

#ifdef BAYCOM_DEBUG
	case BAYCOMCTL_GETDEBUG:
		bi.data.dbg.debug1 = bc->hdrv.ptt_keyed;
		bi.data.dbg.debug2 = bc->debug_vals.last_intcnt;
		bi.data.dbg.debug3 = bc->debug_vals.last_pllcorr;
		break;
#endif /* BAYCOM_DEBUG */

	}
	if (FUNC4(ifr->ifr_data, &bi, sizeof(bi)))
		return -EFAULT;
	return 0;

}