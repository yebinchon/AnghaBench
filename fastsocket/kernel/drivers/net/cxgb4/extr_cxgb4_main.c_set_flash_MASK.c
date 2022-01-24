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
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct ethtool_flash {char* data; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ethtool_flash *ef)
{
	int ret;
	const struct firmware *fw;
	struct adapter *adap = FUNC1(netdev);

	ef->data[sizeof(ef->data) - 1] = '\0';
	ret = FUNC3(&fw, ef->data, adap->pdev_dev);
	if (ret < 0)
		return ret;

	ret = FUNC4(adap, fw->data, fw->size);
	FUNC2(fw);
	if (!ret)
		FUNC0(adap->pdev_dev, "loaded firmware %s\n", ef->data);
	return ret;
}