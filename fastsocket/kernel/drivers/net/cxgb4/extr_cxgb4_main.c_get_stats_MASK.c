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
struct queue_port_stats {int dummy; } ;
struct port_stats {int dummy; } ;
struct port_info {int /*<<< orphan*/  tx_chan; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct port_info*,struct queue_port_stats*) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,struct port_stats*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct ethtool_stats *stats,
		      u64 *data)
{
	struct port_info *pi = FUNC1(dev);
	struct adapter *adapter = pi->adapter;

	FUNC2(adapter, pi->tx_chan, (struct port_stats *)data);

	data += sizeof(struct port_stats) / sizeof(u64);
	FUNC0(adapter, pi, (struct queue_port_stats *)data);
}