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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int EINVAL ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pci_config_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(unsigned int seg, unsigned int bus,
			   unsigned int devfn, int reg, int len, u32 value)
{
	unsigned long flags;
	int dev, fn;

	if ((bus > 255) || (devfn > 255) || (reg > 255)) 
		return -EINVAL;

	dev = FUNC2(devfn);
	fn = FUNC1(devfn);

	if (dev & 0x10) 
		return PCIBIOS_DEVICE_NOT_FOUND;

	FUNC6(&pci_config_lock, flags);

	FUNC3((u8)(0xF0 | (fn << 1)), 0xCF8);
	FUNC3((u8)bus, 0xCFA);

	switch (len) {
	case 1:
		FUNC3((u8)value, FUNC0(dev, reg));
		break;
	case 2:
		FUNC5((u16)value, FUNC0(dev, reg));
		break;
	case 4:
		FUNC4((u32)value, FUNC0(dev, reg));
		break;
	}

	FUNC3(0, 0xCF8);    

	FUNC7(&pci_config_lock, flags);

	return 0;
}