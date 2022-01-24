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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct niu {int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct niu* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *p)
{
	struct niu *np = FUNC2(dev);
	struct sockaddr *addr = p;
	unsigned long flags;

	if (!FUNC0(addr->sa_data))
		return -EINVAL;

	FUNC1(dev->dev_addr, addr->sa_data, ETH_ALEN);

	if (!FUNC3(dev))
		return 0;

	FUNC6(&np->lock, flags);
	FUNC4(np, 0);
	FUNC5(np, dev->dev_addr);
	FUNC4(np, 1);
	FUNC7(&np->lock, flags);

	return 0;
}