#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct rt2x00_dev {void* rf; TYPE_1__* ops; void* eeprom; TYPE_2__ csr; int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rf_size; int /*<<< orphan*/  eeprom_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	struct pci_dev *pci_dev = FUNC4(rt2x00dev->dev);

	rt2x00dev->csr.base = FUNC1(pci_dev, 0);
	if (!rt2x00dev->csr.base)
		goto exit;

	rt2x00dev->eeprom = FUNC0(rt2x00dev->ops->eeprom_size, GFP_KERNEL);
	if (!rt2x00dev->eeprom)
		goto exit;

	rt2x00dev->rf = FUNC0(rt2x00dev->ops->rf_size, GFP_KERNEL);
	if (!rt2x00dev->rf)
		goto exit;

	return 0;

exit:
	FUNC2("Failed to allocate registers\n");

	FUNC3(rt2x00dev);

	return -ENOMEM;
}