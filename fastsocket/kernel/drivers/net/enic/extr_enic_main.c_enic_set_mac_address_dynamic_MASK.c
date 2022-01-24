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
struct sockaddr {char* sa_data; } ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int FUNC0 (struct enic*) ; 
 int FUNC1 (struct enic*) ; 
 int FUNC2 (struct net_device*,char*) ; 
 struct enic* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, void *p)
{
	struct enic *enic = FUNC3(netdev);
	struct sockaddr *saddr = p;
	char *addr = saddr->sa_data;
	int err;

	if (FUNC4(enic->netdev)) {
		err = FUNC1(enic);
		if (err)
			return err;
	}

	err = FUNC2(netdev, addr);
	if (err)
		return err;

	if (FUNC4(enic->netdev)) {
		err = FUNC0(enic);
		if (err)
			return err;
	}

	return err;
}