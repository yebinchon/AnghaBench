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
struct port_info {size_t mod_type; } ;
struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 size_t FW_PORT_MOD_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*,char*,...) ; 
 struct port_info* FUNC2 (struct net_device const*) ; 

void FUNC3(const struct adapter *adap, int port_id)
{
	static const char *mod_str[] = {
		NULL, "LR", "SR", "ER", "passive DA", "active DA", "LRM"
	};

	const struct net_device *dev = adap->port[port_id];
	const struct port_info *pi = FUNC2(dev);

	if (pi->mod_type == FW_PORT_MOD_TYPE_NONE)
		FUNC1(dev, "port module unplugged\n");
	else if (pi->mod_type < FUNC0(mod_str))
		FUNC1(dev, "%s module inserted\n", mod_str[pi->mod_type]);
}