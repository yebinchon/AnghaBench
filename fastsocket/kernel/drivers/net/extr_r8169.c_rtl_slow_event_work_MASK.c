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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct rtl8169_private {int event_slow; int mac_version; int /*<<< orphan*/  mmio_addr; TYPE_1__ wk; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int LinkChg ; 
 int /*<<< orphan*/  RTL_FLAG_TASK_RESET_PENDING ; 
#define  RTL_GIGA_MAC_VER_11 128 
 int RxFIFOOver ; 
 int SYSErr ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int) ; 
 int FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct rtl8169_private *tp)
{
	struct net_device *dev = tp->dev;
	u16 status;

	status = FUNC4(tp) & tp->event_slow;
	FUNC3(tp, status);

	if (FUNC7(status & RxFIFOOver)) {
		switch (tp->mac_version) {
		/* Work around for rx fifo overflow */
		case RTL_GIGA_MAC_VER_11:
			FUNC1(dev);
			/* XXX - Hack alert. See rtl_task(). */
			FUNC6(RTL_FLAG_TASK_RESET_PENDING, tp->wk.flags);
		default:
			break;
		}
	}

	if (FUNC7(status & SYSErr))
		FUNC2(dev);

	if (status & LinkChg)
		FUNC0(dev, tp, tp->mmio_addr, true);

	FUNC5(tp);
}