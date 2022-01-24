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
struct hostap_interface {TYPE_2__* local; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {int (* set_rid ) (struct net_device*,int,char**,int) ;} ;

/* Variables and functions */
 int MAX_SSID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 struct hostap_interface* FUNC2 (struct net_device*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (struct net_device*,int,char**,int) ; 

int FUNC5(struct net_device *dev, int rid, const char *val)
{
	struct hostap_interface *iface;
	char buf[MAX_SSID_LEN + 2];
	int len;

	iface = FUNC2(dev);
	len = FUNC3(val);
	if (len > MAX_SSID_LEN)
		return -1;
	FUNC1(buf, 0, sizeof(buf));
	buf[0] = len; /* little endian 16 bit word */
	FUNC0(buf + 2, val, len);

	return iface->local->func->set_rid(dev, rid, &buf, MAX_SSID_LEN + 2);
}