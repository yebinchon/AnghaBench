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
struct rtl8139_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mmio_addr; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  len; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL_REGS_VER ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl8139_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ use_io ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_regs *regs, void *regbuf)
{
	struct rtl8139_private *tp;

	/* TODO: we are too slack to do reg dumping for pio, for now */
	if (use_io)
		return;
	tp = FUNC1(dev);

	regs->version = RTL_REGS_VER;

	FUNC2(&tp->lock);
	FUNC0(regbuf, tp->mmio_addr, regs->len);
	FUNC3(&tp->lock);
}