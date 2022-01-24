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
struct fe_priv {int /*<<< orphan*/  stats_poll; int /*<<< orphan*/  in_shutdown; } ;

/* Variables and functions */
 scalar_t__ STATS_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct net_device *dev = (struct net_device *) data;
	struct fe_priv *np = FUNC1(dev);

	FUNC2(dev);

	if (!np->in_shutdown)
		FUNC0(&np->stats_poll,
			FUNC3(jiffies + STATS_INTERVAL));
}