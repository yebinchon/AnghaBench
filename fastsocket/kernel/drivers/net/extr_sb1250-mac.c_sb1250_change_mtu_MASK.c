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
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENET_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static int FUNC1(struct net_device *_dev, int new_mtu)
{
	if (new_mtu >  ENET_PACKET_SIZE)
		return -EINVAL;
	_dev->mtu = new_mtu;
	FUNC0("changing the mtu to %d\n", new_mtu);
	return 0;
}