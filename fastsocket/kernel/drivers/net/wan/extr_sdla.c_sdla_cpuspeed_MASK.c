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
struct net_device {int /*<<< orphan*/  name; } ;
struct ifreq {int /*<<< orphan*/  ifr_mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int HZ ; 
 char LOADER_READY ; 
 int /*<<< orphan*/  SDLA_CPU_10M ; 
 int /*<<< orphan*/  SDLA_CPU_16M ; 
 int /*<<< orphan*/  SDLA_CPU_3M ; 
 int /*<<< orphan*/  SDLA_CPU_5M ; 
 int /*<<< orphan*/  SDLA_CPU_7M ; 
 int /*<<< orphan*/  SDLA_CPU_8M ; 
 char Z80_READY ; 
 char Z80_SCC_BAD ; 
 char Z80_SCC_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,int,char,char) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *ifr)
{
	int  jiffs;
	char data;

	FUNC2(dev);
	if (FUNC5(dev, 0, 3*HZ, Z80_READY, 0) < 0)
		return(-EIO);

	data = LOADER_READY;
	FUNC4(dev, 0, &data, 1);

	if ((jiffs = FUNC5(dev, 0, 8*HZ, Z80_SCC_OK, Z80_SCC_BAD)) < 0)
		return(-EIO);

	FUNC3(dev);
	FUNC1(dev, 0, &data, 1);

	if (data == Z80_SCC_BAD)
	{
		FUNC0("%s: SCC bad\n", dev->name);
		return(-EIO);
	}

	if (data != Z80_SCC_OK)
		return(-EINVAL);

	if (jiffs < 165)
		ifr->ifr_mtu = SDLA_CPU_16M;
	else if (jiffs < 220)
		ifr->ifr_mtu = SDLA_CPU_10M;
	else if (jiffs < 258)
		ifr->ifr_mtu = SDLA_CPU_8M;
	else if (jiffs < 357)
		ifr->ifr_mtu = SDLA_CPU_7M;
	else if (jiffs < 467)
		ifr->ifr_mtu = SDLA_CPU_5M;
	else
		ifr->ifr_mtu = SDLA_CPU_3M;
 
	return(0);
}