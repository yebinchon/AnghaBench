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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct bdx_stats {int dummy; } ;
struct bdx_priv {scalar_t__ stats_flag; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bdx_stat_names ; 
 struct bdx_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev)
{
	struct bdx_priv *priv = FUNC2(netdev);
	FUNC1(FUNC0(bdx_stat_names)
		   != sizeof(struct bdx_stats) / sizeof(u64));
	return ((priv->stats_flag) ? FUNC0(bdx_stat_names)	: 0);
}