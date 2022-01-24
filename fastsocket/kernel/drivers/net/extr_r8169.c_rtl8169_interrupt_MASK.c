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
typedef  int u16 ;
struct rtl8169_private {int event_slow; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RTL_EVENT_NAPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rtl8169_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_instance)
{
	struct net_device *dev = dev_instance;
	struct rtl8169_private *tp = FUNC2(dev);
	int handled = 0;
	u16 status;

	status = FUNC3(tp);
	if (status && status != 0xffff) {
		status &= RTL_EVENT_NAPI | tp->event_slow;
		if (status) {
			handled = 1;

			FUNC4(tp);
			FUNC1(&tp->napi);
		}
	}
	return FUNC0(handled);
}