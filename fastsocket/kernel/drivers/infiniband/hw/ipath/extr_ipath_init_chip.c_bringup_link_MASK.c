#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct ipath_devdata {int ipath_control; int ipath_ibmaxlen; int ibcc_mpl_shift; int ipath_ibcctrl; int (* ipath_f_bringup_serdes ) (struct ipath_devdata*) ;TYPE_2__* ipath_kregs; TYPE_1__* pcidev; int /*<<< orphan*/  ipath_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  kr_control; int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_ibcctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INFINIPATH_C_LINKENABLE ; 
 unsigned long long INFINIPATH_IBCC_CREDITSCALE_SHIFT ; 
 int INFINIPATH_IBCC_FLOWCTRLPERIOD_SHIFT ; 
 int INFINIPATH_IBCC_FLOWCTRLWATERMARK_SHIFT ; 
 int INFINIPATH_IBCC_LINKINITCMD_DISABLE ; 
 int INFINIPATH_IBCC_LINKINITCMD_SHIFT ; 
 int INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT ; 
 int INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT ; 
 int /*<<< orphan*/  IPATH_IB_LINK_DISABLED ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ipath_devdata*) ; 

__attribute__((used)) static int FUNC5(struct ipath_devdata *dd)
{
	u64 val, ibc;
	int ret = 0;

	/* hold IBC in reset */
	dd->ipath_control &= ~INFINIPATH_C_LINKENABLE;
	FUNC3(dd, dd->ipath_kregs->kr_control,
			 dd->ipath_control);

	/*
	 * set initial max size pkt IBC will send, including ICRC; it's the
	 * PIO buffer size in dwords, less 1; also see ipath_set_mtu()
	 */
	val = (dd->ipath_ibmaxlen >> 2) + 1;
	ibc = val << dd->ibcc_mpl_shift;

	/* flowcontrolwatermark is in units of KBytes */
	ibc |= 0x5ULL << INFINIPATH_IBCC_FLOWCTRLWATERMARK_SHIFT;
	/*
	 * How often flowctrl sent.  More or less in usecs; balance against
	 * watermark value, so that in theory senders always get a flow
	 * control update in time to not let the IB link go idle.
	 */
	ibc |= 0x3ULL << INFINIPATH_IBCC_FLOWCTRLPERIOD_SHIFT;
	/* max error tolerance */
	ibc |= 0xfULL << INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT;
	/* use "real" buffer space for */
	ibc |= 4ULL << INFINIPATH_IBCC_CREDITSCALE_SHIFT;
	/* IB credit flow control. */
	ibc |= 0xfULL << INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT;
	/* initially come up waiting for TS1, without sending anything. */
	dd->ipath_ibcctrl = ibc;
	/*
	 * Want to start out with both LINKCMD and LINKINITCMD in NOP
	 * (0 and 0).  Don't put linkinitcmd in ipath_ibcctrl, want that
	 * to stay a NOP. Flag that we are disabled, for the (unlikely)
	 * case that some recovery path is trying to bring the link up
	 * before we are ready.
	 */
	ibc |= INFINIPATH_IBCC_LINKINITCMD_DISABLE <<
		INFINIPATH_IBCC_LINKINITCMD_SHIFT;
	dd->ipath_flags |= IPATH_IB_LINK_DISABLED;
	FUNC1(VERBOSE, "Writing 0x%llx to ibcctrl\n",
		   (unsigned long long) ibc);
	FUNC3(dd, dd->ipath_kregs->kr_ibcctrl, ibc);

	// be sure chip saw it
	val = FUNC2(dd, dd->ipath_kregs->kr_scratch);

	ret = dd->ipath_f_bringup_serdes(dd);

	if (ret)
		FUNC0(&dd->pcidev->dev, "Could not initialize SerDes, "
			 "not usable\n");
	else {
		/* enable IBC */
		dd->ipath_control |= INFINIPATH_C_LINKENABLE;
		FUNC3(dd, dd->ipath_kregs->kr_control,
				 dd->ipath_control);
	}

	return ret;
}