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
typedef  int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pci_config_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(unsigned int seg, unsigned int bus,
			  unsigned int devfn, int reg, int len, u32 *value)
{
	unsigned long flags;
	int dev, fn;

	if ((bus > 255) || (devfn > 255) || (reg > 255)) {
		*value = -1;
		return -EINVAL;
	}

	dev = FUNC2(devfn);
	fn = FUNC1(devfn);

	if (dev & 0x10) 
		return PCIBIOS_DEVICE_NOT_FOUND;

	FUNC7(&pci_config_lock, flags);

	FUNC6((u8)(0xF0 | (fn << 1)), 0xCF8);
	FUNC6((u8)bus, 0xCFA);

	switch (len) {
	case 1:
		*value = FUNC3(FUNC0(dev, reg));
		break;
	case 2:
		*value = FUNC5(FUNC0(dev, reg));
		break;
	case 4:
		*value = FUNC4(FUNC0(dev, reg));
		break;
	}

	FUNC6(0, 0xCF8);

	FUNC8(&pci_config_lock, flags);

	return 0;
}