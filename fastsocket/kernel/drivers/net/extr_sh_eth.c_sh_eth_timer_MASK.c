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
struct sh_eth_private {int /*<<< orphan*/  timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct net_device *ndev = (struct net_device *)data;
	struct sh_eth_private *mdp = FUNC1(ndev);

	FUNC0(&mdp->timer, jiffies + (10 * HZ));
}