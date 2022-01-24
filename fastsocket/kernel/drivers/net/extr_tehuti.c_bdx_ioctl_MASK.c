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
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SIOCDEVPRIVATE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev, struct ifreq *ifr, int cmd)
{
	ENTER;
	if (cmd >= SIOCDEVPRIVATE && cmd <= (SIOCDEVPRIVATE + 15))
		FUNC0(FUNC1(ndev, ifr, cmd));
	else
		FUNC0(-EOPNOTSUPP);
}