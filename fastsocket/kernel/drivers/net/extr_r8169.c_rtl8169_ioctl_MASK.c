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
struct rtl8169_private {int (* do_ioctl ) (struct rtl8169_private*,struct mii_ioctl_data*,int) ;} ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct mii_ioctl_data* FUNC0 (struct ifreq*) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct rtl8169_private*,struct mii_ioctl_data*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct rtl8169_private *tp = FUNC1(dev);
	struct mii_ioctl_data *data = FUNC0(ifr);

	return FUNC2(dev) ? tp->do_ioctl(tp, data, cmd) : -ENODEV;
}