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
typedef  int u32 ;
typedef  int /*<<< orphan*/  temperature ;
struct tg3 {int /*<<< orphan*/  lock; } ;
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct tg3* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC6 (struct device*) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			     struct device_attribute *devattr, char *buf)
{
	struct pci_dev *pdev = FUNC6(dev);
	struct net_device *netdev = FUNC1(pdev);
	struct tg3 *tp = FUNC0(netdev);
	struct sensor_device_attribute *attr = FUNC7(devattr);
	u32 temperature;

	FUNC2(&tp->lock);
	FUNC5(tp, &temperature, attr->index,
				sizeof(temperature));
	FUNC3(&tp->lock);
	return FUNC4(buf, "%u\n", temperature);
}