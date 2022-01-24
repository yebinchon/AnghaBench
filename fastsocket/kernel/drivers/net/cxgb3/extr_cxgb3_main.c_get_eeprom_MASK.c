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
typedef  int /*<<< orphan*/  u8 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int /*<<< orphan*/  magic; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROMSIZE ; 
 int /*<<< orphan*/  EEPROM_MAGIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct adapter*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_eeprom *e,
		      u8 * data)
{
	struct port_info *pi = FUNC3(dev);
	struct adapter *adapter = pi->adapter;
	int i, err = 0;

	u8 *buf = FUNC1(EEPROMSIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	e->magic = EEPROM_MAGIC;
	for (i = e->offset & ~3; !err && i < e->offset + e->len; i += 4)
		err = FUNC4(adapter, i, (__le32 *) & buf[i]);

	if (!err)
		FUNC2(data, buf + e->offset, e->len);
	FUNC0(buf);
	return err;
}