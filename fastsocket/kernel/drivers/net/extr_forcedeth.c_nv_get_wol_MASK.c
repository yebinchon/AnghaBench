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
struct fe_priv {int /*<<< orphan*/  lock; scalar_t__ wolenabled; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; } ;

/* Variables and functions */
 void* WAKE_MAGIC ; 
 struct fe_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct ethtool_wolinfo *wolinfo)
{
	struct fe_priv *np = FUNC0(dev);
	wolinfo->supported = WAKE_MAGIC;

	FUNC1(&np->lock);
	if (np->wolenabled)
		wolinfo->wolopts = WAKE_MAGIC;
	FUNC2(&np->lock);
}