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
struct atl1c_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int AT_EEPROM_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct atl1c_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev)
{
	struct atl1c_adapter *adapter = FUNC1(netdev);

	if (FUNC0(&adapter->hw))
		return AT_EEPROM_LEN;
	else
		return 0;
}