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
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct hdlc_proto {int (* ioctl ) (struct net_device*,struct ifreq*) ;struct hdlc_proto* next; } ;
struct TYPE_4__ {TYPE_1__* proto; } ;
struct TYPE_3__ {int (* ioctl ) (struct net_device*,struct ifreq*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int SIOCWANDEV ; 
 TYPE_2__* FUNC0 (struct net_device*) ; 
 struct hdlc_proto* first_proto ; 
 int FUNC1 (struct net_device*,struct ifreq*) ; 
 int FUNC2 (struct net_device*,struct ifreq*) ; 

int FUNC3(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct hdlc_proto *proto = first_proto;
	int result;

	if (cmd != SIOCWANDEV)
		return -EINVAL;

	if (FUNC0(dev)->proto) {
		result = FUNC0(dev)->proto->ioctl(dev, ifr);
		if (result != -EINVAL)
			return result;
	}

	/* Not handled by currently attached protocol (if any) */

	while (proto) {
		if ((result = proto->ioctl(dev, ifr)) != -EINVAL)
			return result;
		proto = proto->next;
	}
	return -EINVAL;
}