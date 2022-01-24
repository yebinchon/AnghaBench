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
typedef  int u32 ;
struct sockaddr {int* sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct jme_adapter {int /*<<< orphan*/  macaddr_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  JME_RXUMA_HI ; 
 int /*<<< orphan*/  JME_RXUMA_LO ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, void *p)
{
	struct jme_adapter *jme = FUNC2(netdev);
	struct sockaddr *addr = p;
	u32 val;

	if (FUNC3(netdev))
		return -EBUSY;

	FUNC4(&jme->macaddr_lock);
	FUNC1(netdev->dev_addr, addr->sa_data, netdev->addr_len);

	val = (addr->sa_data[3] & 0xff) << 24 |
	      (addr->sa_data[2] & 0xff) << 16 |
	      (addr->sa_data[1] & 0xff) <<  8 |
	      (addr->sa_data[0] & 0xff);
	FUNC0(jme, JME_RXUMA_LO, val);
	val = (addr->sa_data[5] & 0xff) << 8 |
	      (addr->sa_data[4] & 0xff);
	FUNC0(jme, JME_RXUMA_HI, val);
	FUNC5(&jme->macaddr_lock);

	return 0;
}