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
struct port_info {int /*<<< orphan*/  viid; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct port_info *pi = FUNC0(dev);
	struct adapter *adapter = pi->adapter;

	FUNC2(dev);
	FUNC1(dev);
	return FUNC3(adapter, adapter->fn, pi->viid, false, false);
}