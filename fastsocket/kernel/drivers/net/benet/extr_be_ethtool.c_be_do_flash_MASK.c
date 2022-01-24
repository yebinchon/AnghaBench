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
struct ethtool_flash {int /*<<< orphan*/  data; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int ETHTOOL_FLASH_MAX_FILENAME ; 
 int FUNC0 (struct be_adapter*,char*) ; 
 struct be_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, struct ethtool_flash *efl)
{
	struct be_adapter *adapter = FUNC1(netdev);
	char file_name[ETHTOOL_FLASH_MAX_FILENAME];

	file_name[ETHTOOL_FLASH_MAX_FILENAME - 1] = 0;
	FUNC2(file_name, efl->data);

	return FUNC0(adapter, file_name);
}